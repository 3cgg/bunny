package me.bunny.web.filter;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.bunny.kernel.ServerSessionCollecters;
import me.bunny.kernel._c.ServerSession;
import me.bunny.kernel._c.ServerSessionHolder;
import me.bunny.kernel._c.model.InvokeResult;
import me.bunny.util.JJSON;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

public class ServerSessionFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		ServerSession serverSession=new ServerSession();
		serverSession.setRequest((HttpServletRequest) request);
		ServerSessionHolder.setServerSession(serverSession);
		WebApplicationContext applicationContext=
				WebApplicationContextUtils.getWebApplicationContext(request.getServletContext());
		ServerSessionCollecters collecters=applicationContext.getBean(ServerSessionCollecters.class);
		try{
			HttpServletRequest httpServletRequest=(HttpServletRequest) request;
			collecters.collect(httpServletRequest,(HttpServletResponse) response);
		}catch (Exception e) {
			e.printStackTrace();
			try(OutputStream outputStream=response.getOutputStream()){
				String res= JJSON.get().formatObject(InvokeResult.sys(e.getMessage()));
				outputStream.write(res.getBytes(Charset.forName("UTF-8")));
				outputStream.flush();
			}
			return;
		}
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
	}

}

package me.bunny.kernel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import me.bunny.kernel._c.ServerSessionCollecter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ServerSessionCollecters implements ServerSessionCollecter<HttpServletRequest,HttpServletResponse> {

	@Autowired
	private JWTCollecter jwtCollecter;

	@Override
	public void collect(HttpServletRequest source,HttpServletResponse out) throws JWTTokenException {
		jwtCollecter.collect(source,out);  // collect JWT
	}
	
	
	
	
}

package me.bunny.kernel._c;

import javax.servlet.http.HttpServletRequest;

import me.bunny.kernel._c.model.JModel;
import me.bunny.kernel._c.model.SessionUser;

public class ServerSession implements JModel{

	private transient HttpServletRequest request;
	
	private SessionUser sessionUser;
	
	private String jwt;

	public SessionUser getSessionUser() {
		return sessionUser;
	}

	public void setSessionUser(SessionUser sessionUser) {
		this.sessionUser = sessionUser;
	}

	public String getJwt() {
		return jwt;
	}

	public void setJwt(String jwt) {
		this.jwt = jwt;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

}

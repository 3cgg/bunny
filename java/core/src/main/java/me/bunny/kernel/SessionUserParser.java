package me.bunny.kernel;

import me.bunny.kernel._c.model.SessionUser;

public interface SessionUserParser<T> {

	SessionUser parse(T source);
	
	public static interface JWTSessionUserParser extends SessionUserParser<String>{
		
	}
}

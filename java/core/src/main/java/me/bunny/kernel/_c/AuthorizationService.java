package me.bunny.kernel._c;

import me.bunny.kernel._c.model.SessionUser;

public interface AuthorizationService<T> {

	boolean authorise(SessionUser sessionUser, T source);
	
}

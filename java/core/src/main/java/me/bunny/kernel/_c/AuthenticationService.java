package me.bunny.kernel._c;

import me.bunny.kernel._c.model.SessionUser;

public interface AuthenticationService {

	boolean auth(SessionUser sessionUser);
	
}

package me.bunny._b._core.auth.impl;

import me.bunny.kernel._c.AuthorizationService;
import org.springframework.stereotype.Service;

import me.bunny.kernel._c.model.SessionUser;

@Service
public class AuthorizationServiceImpl implements AuthorizationService<String> {

	@Override
	public boolean authorise(SessionUser sessionUser, String source) {
		return true;
	}

}

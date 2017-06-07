package me.bunny._b._core.auth.impl;

import me.bunny.kernel._c.AuthenticationService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import me.bunny.kernel._c.model.SessionUser;

@Transactional
@Service
public class AuthenticationServiceImpl implements AuthenticationService {

	@Override
	public boolean auth(SessionUser sessionUser) {
		return true;
	}

}

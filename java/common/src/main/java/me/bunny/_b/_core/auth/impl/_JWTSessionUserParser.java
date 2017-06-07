package me.bunny._b._core.auth.impl;

import me.bunny.kernel.JWTService;
import me.bunny.kernel.SessionUserParser;
import me.bunny.kernel._c.model.SessionUser;
import me.bunny.util.JStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import io.jsonwebtoken.Claims;

@Component
public class _JWTSessionUserParser implements SessionUserParser.JWTSessionUserParser {

	@Autowired
	private JWTService jwtService;
	
	@Autowired
	private JWTClaims jwtClaims;
	
	@Override
	public SessionUser parse(String source) {
		if(JStringUtils.isNotNullOrEmpty(source)){
			Claims claims=jwtService.getClaimsFromToken(source);
			SessionUser sessionUser=jwtClaims.sessionUser(claims);
			return sessionUser;
		}
		return null;
	}

}

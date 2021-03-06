package me.bunny.kernel.aop;

import me.bunny.kernel.SessionUserParser;
import me.bunny.kernel._c.ServerSession;
import me.bunny.kernel._c.ServerSessionHolder;
import me.bunny.kernel._c._i.JAspect;
import me.bunny.kernel._c.model.SessionUser;
import me.bunny.util.JStringUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

@Aspect
@Component
@Order(value=SessionUserAspect.ORDER_NUMBER)
public class SessionUserAspect implements JAspect {

	public static final int ORDER_NUMBER=JWTValidationAspect.ORDER_NUMBER+100;
	
	private static final Logger LOGGER = LoggerFactory.getLogger(SessionUserAspect.class);  

	@Autowired
	private SessionUserParser.JWTSessionUserParser sessionUserParser;
	
	
	@Pointcut("execution(@org.springframework.web.bind.annotation.RequestMapping * *(..))"
//			+ "&& !@annotation(NoClosureException)"
			)
	public void sessionUser() {
	}
	
	@Around(value = "sessionUser()")
	public Object aroundLog(ProceedingJoinPoint pjd) throws Throwable {
		ServerSession serverSession= ServerSessionHolder.getServerSession();
		String jwt=serverSession.getJwt();
		if(JStringUtils.isNotNullOrEmpty(jwt)){
			SessionUser sessionUser=sessionUserParser.parse(jwt);
			serverSession.setSessionUser(sessionUser);
		}
		return pjd.proceed();
	}
	
	
	
	
	
	
	
	
	
	
	
	
}

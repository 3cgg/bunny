package me.bunny.kernel.aop;

import me.bunny.kernel.JWTService;
import me.bunny.kernel._c.ServerSessionHolder;
import me.bunny.kernel._c.model.InvokeResult;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import me.bunny.kernel._c._i.JAspect;
import me.bunny.util.JStringUtils;

@Aspect
@Component
@Order(value=JWTValidationAspect.ORDER_NUMBER)
public class JWTValidationAspect implements JAspect {

	public static final int ORDER_NUMBER=ExceptionAspect.ORDER_NUMBER+100;
	
	private static final Logger LOGGER = LoggerFactory.getLogger(JWTValidationAspect.class);  
	
	@Autowired
	private JWTService jwtService;
	
	
	@Pointcut("execution(@org.springframework.web.bind.annotation.RequestMapping * *(..))"
//			+ "&& !@annotation(NoClosureException)"
			)
	public void jwtValidation() {
	}
	
	@Around(value = "jwtValidation()")
	public Object aroundLog(ProceedingJoinPoint pjd) throws Throwable {
		String jwt= ServerSessionHolder.getServerSession().getJwt();
		if(JStringUtils.isNotNullOrEmpty(jwt)){
			if(!jwtService.isSigned(jwt)){
				return InvokeResult.bys("E001");//Invalid-JWT
			}
			try{
				//attempt to check if the JWT is valid.
				jwtService.getClaimsFromToken(jwt);
			}catch (Exception e) {
				return InvokeResult.bys("E001");//Invalid-JWT
			}
		}
		return pjd.proceed();
	}
	
	
	
	
	
	
	
	
	
	
	
	
}

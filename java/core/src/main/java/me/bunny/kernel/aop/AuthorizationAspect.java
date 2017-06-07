package me.bunny.kernel.aop;

import me.bunny.kernel._c.AuthorizationService;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Condition;
import org.springframework.context.annotation.ConditionContext;
import org.springframework.context.annotation.Conditional;
import org.springframework.core.annotation.Order;
import org.springframework.core.env.Environment;
import org.springframework.core.type.AnnotatedTypeMetadata;
import org.springframework.stereotype.Component;

import me.bunny.kernel._Cfg;
import me.bunny.kernel._c.ServerSessionHolder;
import me.bunny.kernel._c._i.JAspect;
import me.bunny.kernel._c.model.InvokeResult;
import me.bunny.kernel._c.model.SessionUser;

@Aspect
@Component
@Order(value=AuthorizationAspect.ORDER_NUMBER)
@Conditional({AuthorizationAspect._AuthorizationCondition.class})
public class AuthorizationAspect implements JAspect{

	public static final int ORDER_NUMBER=AuthenticationAspect.ORDER_NUMBER+100;
	
	
	private static final Logger LOGGER = LoggerFactory.getLogger(AuthorizationAspect.class);  
	
	@Autowired
	private AuthorizationService<String> authorizationService;
	
	
	private static final String SWITCH="cpp.auth.authorization";
	
	public static class _AuthorizationCondition implements Condition{

		@Override
		public boolean matches(ConditionContext context, AnnotatedTypeMetadata metadata) {
			Environment environment= context.getEnvironment();
			LOGGER.info("authorization enable : "+environment.getProperty(SWITCH));
			return environment.getProperty(SWITCH, Boolean.class,false);
		}
		
	}
	
	@Autowired
	private _Cfg cfg;
	
//	private boolean on(){
//		return cfg.getAuth().isAuthorization();
//	}
	
	@Pointcut("execution(@org.springframework.web.bind.annotation.RequestMapping * *(..))"
			+ "&& !@annotation(NoAuthorization)"
			)
	public void authorization() {
	}
	
	@Around(value = "authorization()")
	public Object aroundLog(ProceedingJoinPoint pjd) throws Throwable {
		SessionUser sessionUser=ServerSessionHolder.getSessionUser();
		String url="";
		boolean authorised=authorizationService.authorise(sessionUser, url);
		if(authorised){
			return pjd.proceed();
		}
		else{
			return InvokeResult.bys("No Authorised.");
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
}

package me.bunny._b._core.kaptcha;

import javax.servlet.http.HttpServletRequest;

import me.bunny.AppConfig;
import me.bunny.kernel._c.model.InvokeResult;
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

import me.bunny._b._core.KaptchaRepository;
import me.bunny._b._core._CodeNames;
import me.bunny.kernel._c.ServerSessionHolder;
import me.bunny.kernel._c._i.JAspect;
import me.bunny.kernel.mock._MockAspect;
import me.bunny.util.JStringUtils;

@Aspect
@Component
@Order(value=KaptchaAspect.ORDER_NUMBER)
@Conditional({KaptchaAspect._KaptchaCondition.class})
public class KaptchaAspect implements JAspect{

	public static final int ORDER_NUMBER=_MockAspect.ORDER_NUMBER+100;
	
	private static final Logger LOGGER = LoggerFactory.getLogger(KaptchaAspect.class);  
	
	@Autowired
	private AppConfig._Config config;
	
	@Autowired
	private KaptchaRepository kaptchaRepository;
	
	
	private static final String SWITCH="cpp.kaptcha.enable";
	
	public static class _KaptchaCondition implements Condition{

		@Override
		public boolean matches(ConditionContext context, AnnotatedTypeMetadata metadata) {
			Environment environment= context.getEnvironment();
			LOGGER.info("kaptcha enable : "+environment.getProperty(SWITCH));
			return environment.getProperty(SWITCH, Boolean.class,false);
		}
		
	}
	
	@Pointcut("execution(@org.springframework.web.bind.annotation.RequestMapping * *(..))"
			+ "&& @annotation(KaptchaOn)"
			)
	public void kaptchaOn() {
	}
	
	@Around(value = "kaptchaOn()")
	public Object aroundLog(ProceedingJoinPoint pjd) throws Throwable {
		HttpServletRequest request=ServerSessionHolder.getServerSession().getRequest();
		// some ambiguous issues may occurs because of data are different request part
		String key=request.getHeader(config.getKaptcha().getHeaderKey());
		if(JStringUtils.isNullOrEmpty(key)){ // from form body
			key=request.getParameter(config.getKaptcha().getHeaderKey());
		}
		String value=request.getHeader(config.getKaptcha().getHeaderValue());
		if(JStringUtils.isNullOrEmpty(value)){ // from form body
			value=request.getParameter(config.getKaptcha().getHeaderValue());
		}
		
		if(JStringUtils.isNullOrEmpty(key)
				||JStringUtils.isNullOrEmpty(value)){
			return InvokeResult.bys(_CodeNames.E0003);
		}
		boolean v=true;
		try{
			v=kaptchaRepository.exists(key, value);
		}finally{
			kaptchaRepository.remove(key);
		}
		if(v){
			return pjd.proceed();
		}else{
			return InvokeResult.bys(_CodeNames.E0003);
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
}

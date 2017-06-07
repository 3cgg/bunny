package me.bunny.kernel.aop;

import me.bunny.kernel._c.model.InvokeResult;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import me.bunny.kernel.BusinessException;
import me.bunny.kernel._c._i.JAspect;

@Aspect
@Component
@Order(value=ExceptionAspect.ORDER_NUMBER)
public class ExceptionAspect implements JAspect{

	public static final int ORDER_NUMBER=JAspect.LOWEST_NUMBER+100;
	
	private static final Logger LOGGER = LoggerFactory.getLogger(ExceptionAspect.class);  
	
	@Pointcut("execution(@org.springframework.web.bind.annotation.RequestMapping * *(..))"
			+ "&& !@annotation(NoClosureException)"
			)
	public void exception() {
	}
	
	@Around(value = "exception()")
	public Object aroundLog(ProceedingJoinPoint pjd) throws Throwable {
		try {
			return pjd.proceed();
		}catch (BusinessException e) {
			LOGGER.error(e.getMessage(), e);
			return InvokeResult.bys(e.getMessage());
		}catch (RuntimeException e) {
			LOGGER.error(e.getMessage(), e);
			return InvokeResult.sys(e.getMessage());
		}catch (Exception e) {
			LOGGER.error(e.getMessage(), e);
			return InvokeResult.sys(e.getMessage());
		}catch (Throwable e) {
			LOGGER.error(e.getMessage(), e);
			return InvokeResult.sys(e.getMessage());
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
}

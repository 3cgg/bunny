package me.bunny.kernel.mock;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import me.bunny.kernel._c.ServerSessionHolder;
import me.bunny.kernel._c.model.InvokeResult;
import me.bunny.kernel._c.model.JImpl;
import me.bunny.kernel._c.model.JPageUtil;
import me.bunny.kernel._c.model.SimplePageRequest;
import me.bunny.kernel.aop.AuthenticationAspect;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
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
import me.bunny.kernel._c._i.JAspect;
import me.bunny.kernel._c.bean.RandomObjectBinder;
import me.bunny.util.JStringUtils;

@Aspect
@Component
@Order(value=_MockAspect.ORDER_NUMBER)
@Conditional({_MockAspect._MockCondition.class})
public class _MockAspect implements JAspect{

	public static final int ORDER_NUMBER= AuthenticationAspect.ORDER_NUMBER+100;
	
	private static final Logger LOGGER = LoggerFactory.getLogger(_MockAspect.class);  
	
	private static final String SWITCH="cpp.mock.enable";
	
	public static class _MockCondition implements Condition{

		@Override
		public boolean matches(ConditionContext context, AnnotatedTypeMetadata metadata) {
			Environment environment= context.getEnvironment();
			LOGGER.info("mock enable : "+environment.getProperty(SWITCH));
			return environment.getProperty(SWITCH, Boolean.class,false);
		}
		
	}
	
	@Autowired
	private _Cfg cfg;
	
	@Pointcut("execution(@org.springframework.web.bind.annotation.RequestMapping * *(..))"
			+ "&& @annotation(Mock)"
			)
	public void mock() {
	}
	
	@Around(value = "mock()")
	public Object aroundLog(ProceedingJoinPoint pjd) throws Throwable {
		HttpServletRequest request= ServerSessionHolder.getServerSession().getRequest();
		// some ambiguous issues may occurs because of data are different request part
		String key=request.getHeader(cfg.getMock().getHeaderKey());
		if(JStringUtils.isNotNullOrEmpty(key)){
			// do mock process
			MethodSignature methodSignature= (MethodSignature)pjd.getSignature();
//			String methodName=methodSignature.getName();
			Mock mock= methodSignature.getMethod().getDeclaredAnnotation(Mock.class);
			
			if(mock.pageable()){
				JImpl<Object> impl=new JImpl<>();
				SimplePageRequest simplePageRequest=new SimplePageRequest(1, 10);
				impl.setPageable(simplePageRequest);
				impl.setTotalRecordNumber(999);
				impl.caculatePageNumber();
				RandomObjectBinder<Object> binder=new RandomObjectBinder<>();
				Object[] obj= (Object[]) binder.createObject((Class<Object>) mock.type());
				JPageUtil.replaceConent(impl, Arrays.asList(obj));
				return InvokeResult.success(impl);
			}else{
				RandomObjectBinder<Object> binder=new RandomObjectBinder<>();
				Object obj= binder.createObject((Class<Object>) mock.type());
				return InvokeResult.success(obj);
			}
			
		}
		return pjd.proceed();
	}
	
	
	
	
	
	
	
	
	
	
	
	
}

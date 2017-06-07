/**
 * 
 */
package me.bunny._b._core.login.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import me.bunny._b._core.kaptcha.KaptchaOn;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import me.bunny._b._core.APP;
import me.bunny._b._core.auth.impl.JWTClaims;
import me.bunny._b._core.element.service.PageElementService;
import me.bunny._b._core.login.service.LoginService;
import me.bunny._b._core.login.vo.LoginInVO;
import me.bunny._b._core.menu.service.MenuService;
import me.bunny._b._core.sysrole.service.SysRoleService;
import me.bunny._b._core.sysuser.model.SysUser;
import me.bunny.kernel.JWTService;
import me.bunny.kernel._c.ServerSessionHolder;
import me.bunny.kernel._c.model.InvokeResult;
import me.bunny.kernel._c.model.SessionUser;
import me.bunny.kernel.aop.NoAuthentication;
import me.bunny.kernel.aop.NoAuthorization;
import me.bunny.util.Copy;

/**
 * @author zhengzw
 *
 */
@Controller
@RequestMapping("/login")
public class LoginController {

	private final Logger LOGGER = LoggerFactory.getLogger(getClass());

	@Autowired
	private LoginService loginService;
	
	@Autowired
	private SysRoleService sysRoleService;

	@Autowired
	private MenuService menuService;

	@Autowired
	private PageElementService pageElementService;
	
	@Autowired
	private JWTService jwtService;
	
	@Autowired
	private JWTClaims jwtClaims;

	@RequestMapping(path="/userLogin",method=RequestMethod.POST)
	@ResponseBody
	@NoAuthentication
	@NoAuthorization
	@KaptchaOn
	public InvokeResult userLogin(LoginInVO inVO, HttpServletRequest request) throws Exception{
		SysUser sysUser = Copy.simpleCopy(inVO, SysUser.class);
//		String captcha = inVO.getCaptcha();
//		
//		if(!StringUtils.equals(request.getSession().getAttribute("validate_captcha_code"), captcha)){
//			throw new BusinessException("验证码错误!");
//		}
		
		SessionUser sessionUser=loginService.userLogin(sysUser);
		if(sessionUser!=null){
			Map<String, Object> claims=jwtClaims.claims(sessionUser, null);
			String token=jwtService.generateToken(claims);
			
			return InvokeResult.success(token);
		}else{
			return InvokeResult.bys("Invalid User");
		}
	}

	@RequestMapping(path="/appLogin",method=RequestMethod.POST)
	@APP
	@ResponseBody
	public InvokeResult appLogin(LoginInVO inVO, HttpServletRequest request) throws Exception{
		SysUser sysUser = Copy.simpleCopy(inVO, SysUser.class);
		
		SessionUser sessionUser=loginService.userLogin(sysUser);
		if(sessionUser!=null){
			Map<String, Object> claims=jwtClaims.claims(sessionUser, null);
			String token=jwtService.generateToken(claims);
			
			return InvokeResult.success(token);
		}else{
			return InvokeResult.bys("Invalid User");
		}
	}
	
	@NoAuthentication
	@NoAuthorization
	@RequestMapping(path="/loginout",method=RequestMethod.POST)
	@ResponseBody
	public InvokeResult loginout() throws Exception{
		return InvokeResult.success(true);
	}
	
	/**
	 * 获取登录信息
	 * 用户名密码等
	 * getParty:
	 * <pre>
	 *
	 * </pre>
	 * @return
	 * @author 张军
	 */
	@RequestMapping(path="/getsessionUser",method=RequestMethod.GET)
	@ResponseBody
	public InvokeResult getsessionUser(){
		SessionUser sessionUser = ServerSessionHolder.getSessionUser();
		return 	InvokeResult.success(sessionUser);
	}
	
}

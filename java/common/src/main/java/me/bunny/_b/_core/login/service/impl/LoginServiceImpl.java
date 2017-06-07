/**
 * 
 */
package me.bunny._b._core.login.service.impl;

import me.bunny._b._core.sysuser.UserCodesTable;
import me.bunny._b._core.sysuser.model.SysUser;
import me.bunny._b._core.sysuser.service.SysUserService;
import me.bunny.kernel._c.security.SecurityService;
import me.bunny.kernel._c.service.ServiceSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import me.bunny._b._core.login.service.LoginService;
import me.bunny.kernel.BusinessException;
import me.bunny.kernel._c.model.SessionUser;

/**
 * @author zhengzw
 *
 */
@Service
@Transactional
public class LoginServiceImpl extends ServiceSupport implements LoginService {

	@Autowired
	private SysUserService sysUserService;

	@Autowired
	private SecurityService securityService;

	@Override
	public SessionUser userLogin(SysUser sysUser) {
		String user_account = sysUser.getUserAccount();
		String password = sysUser.getPassword();

		SysUser dbUser = sysUserService.getSysUserByAccount(user_account);

		if (null == dbUser) {
			throw new BusinessException("用户账号或者密码错误!");
		}

		// 密码正确
		if (securityService.encriptyByMD5(password).equals(dbUser.getPassword())) {
			if (UserCodesTable.UserState.DISABLE.equals(dbUser.getDisabled())) {
				throw new BusinessException("用户账号已禁用,请联系系统管理员!");
			}
			String userId = dbUser.getId();
			// 用户信息
			SessionUser user = new SessionUser();
			user.setId(userId);
			user.setUserName(dbUser.getUserAccount());
			user.setNatureName(dbUser.getName());
			return user;
//			// 角色信息
//			List<SysRoleGetOutVO> list = sysRoleService.getSysRoleByUserId(userId);
//			ServerSessionHolder.put("roles", list);
//
//			// 菜单
//			List<JTreeNode> menuList = menuService.getMenuTreeByUser(userId);
//			ServerSessionHolder.put("menus", menuList);
//
//			// 页面元素
//			List<SysUserElementOutVO> elementList = pageElementService.getElementByUser(userId);
//			ServerSessionHolder.put("elements", elementList);
		} else {
			throw new BusinessException("用户账号或者密码错误!");
		}
	}

}

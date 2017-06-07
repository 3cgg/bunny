/**
 * 
 */
package me.bunny._b._core.login.service;

import me.bunny._b._core.sysuser.model.SysUser;
import me.bunny.kernel._c.model.SessionUser;

/**
 * @author zhengzw
 *
 */
public interface LoginService {

	/**
	 * 用户登录
	 * 
	 * @param context
	 * @param sysUser
	 * @return
	 */
	public SessionUser userLogin(SysUser sysUser);
}

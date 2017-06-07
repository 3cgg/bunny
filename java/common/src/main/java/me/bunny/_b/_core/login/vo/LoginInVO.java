/**
 * 
 */
package me.bunny._b._core.login.vo;

import javax.validation.constraints.NotNull;

import me.bunny.kernel._c.model.JInputModel;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author zhengzw
 *
 */
public class LoginInVO implements JInputModel {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 3224826514404789517L;
	
	@NotNull(message = "用户账号不允许为空!")
	@NotEmpty(message = "用户账号不允许为空!")
	private String userAccount;
	
	@NotNull(message = "用户密码不允许为空!")
	@NotEmpty(message = "用户密码不允许为空!")
	private String password;
	
	private String captcha;

	public String getUserAccount() {
		return userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCaptcha() {
		return captcha;
	}

	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}
}

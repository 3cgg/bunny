/**
 * 
 */
package me.bunny._b._core.sysrole.vo;

import javax.validation.constraints.NotNull;

import me.bunny.kernel._c.model.JInputModel;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author zhengzw
 *
 */
public class SysRoleElementInVO implements JInputModel {
	
	private static final long serialVersionUID = 819685088479195527L;

	@NotEmpty(message = "角色主键不允许为空")
	@NotNull(message = "角色主键不允许为空")
	@Length(max = 36, message = "角色主键最大长度支持36个字符")
	private String roleId;
	
	@NotEmpty(message = "元素主键不允许为空")
	@NotNull(message = "元素主键不允许为空")
	@Length(max = 36, message = "元素主键最大长度支持36个字符")
	private String elementId;

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getElementId() {
		return elementId;
	}

	public void setElementId(String elementId) {
		this.elementId = elementId;
	}
}

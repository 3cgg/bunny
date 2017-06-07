package me.bunny.demo.casemag.vo;

import io.swagger.annotations.ApiModelProperty;

public class UserCategoryRecordVO extends CaseCategoryRecordVO {

	@ApiModelProperty(value="用户名")
	private String userName;
	
	@ApiModelProperty(value="用户ID")
	private String userId;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
}

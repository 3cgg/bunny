package me.bunny.demo.casemag.vo;

import me.bunny.kernel._c.model.JInputModel;

import io.swagger.annotations.ApiModelProperty;

public class CaseCriteriaVO extends CaseInfo implements JInputModel {

	/**
	 * 发布时间(START)
	 */
	@ApiModelProperty(value="发布时间(START)",example="yyyy-MM-dd")
	private String releaseTimeStart;
	
	/**
	 * 发布时间(END)
	 */
	@ApiModelProperty(value="发布时间(END)",example="yyyy-MM-dd")
	private String releaseTimeEnd;

	public String getReleaseTimeStart() {
		return releaseTimeStart;
	}

	public void setReleaseTimeStart(String releaseTimeStart) {
		this.releaseTimeStart = releaseTimeStart;
	}

	public String getReleaseTimeEnd() {
		return releaseTimeEnd;
	}

	public void setReleaseTimeEnd(String releaseTimeEnd) {
		this.releaseTimeEnd = releaseTimeEnd;
	}
	
}

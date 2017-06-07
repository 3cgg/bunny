
package me.bunny.demo.casemag.vo;

import me.bunny.kernel._c.model.JOutputModel;

public class CaseRecordVO extends CaseInfo implements JOutputModel {

	/**
	 * 发布时间
	 */
	private String releaseTimeStr;
	
	/**
	 * 收藏数
	 */
	private String collectCount;

	public String getReleaseTimeStr() {
		return releaseTimeStr;
	}

	public void setReleaseTimeStr(String releaseTimeStr) {
		this.releaseTimeStr = releaseTimeStr;
	}

	public String getCollectCount() {
		return collectCount;
	}

	public void setCollectCount(String collectCount) {
		this.collectCount = collectCount;
	}
	
	
	
}

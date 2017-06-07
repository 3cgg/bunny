package me.bunny.demo.labelmag;

import me.bunny.CodesTable;

/**
 * @author Modified by Zhang Xiang on 2017/5/31
 */

public interface LabelCodesTable extends CodesTable {

	// 字典 - 标签状态
	public interface LabelUseableState {
		String CODE = "LABEL_USEABLE";
		String ENABLE = "1"; // 启用
		String DISABLE = "0"; // 禁用
	}
}

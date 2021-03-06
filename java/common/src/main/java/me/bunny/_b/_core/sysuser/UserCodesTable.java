package me.bunny._b._core.sysuser;

import me.bunny.CodesTable;

public interface UserCodesTable extends CodesTable {
	// 用户状态
	public interface UserState {
		String CODE = "USER_DISABLED";
		String ENABLE = "1"; // 启用
		String DISABLE = "0"; // 禁用
	}
}

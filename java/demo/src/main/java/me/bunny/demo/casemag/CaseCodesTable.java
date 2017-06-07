package me.bunny.demo.casemag;

import me.bunny.CodesTable;

public interface CaseCodesTable extends CodesTable {

	public interface CaseTop{
		String CODE = "CASE_TOP";
		String YES = "Y";  //"置顶"; 
		String NO= "N";  //"非置顶"; 
	}
	
	public interface CaseEssence{
		String CODE = "CASE_ESSENCE";
		String YES = "Y";  //"精华"; 
		String NO= "N";  //"非精华"; 
	}
	
	public interface CaseUpDown{
		String CODE = "CASE_UP_DOWM";
		String UP = "Y";  //"上架"; 
		String DOWN = "N";  //"下架"; 
	}
	
	public interface CaseAuth{
		String CODE = "CASE_AUTH";
		String PASS = "P";  //"审核通过"; 
		String REJECT = "R";  //"审核不通过"; 
	}
	
	public interface CaseRead{
		String CODE = "CASE_READ";
		String READ = "R";  //"已读"
		String UNREAD = "UR";  //"未读"; 
	}
	
	// 案例分类是否启用
	public interface CaseCategoryEnable {
		String CODE = "CASE_CATEGORY_ENABLE";
		String ENABLE = "Y"; // 启用
		String DISABLE = "N"; // 禁用
	}
	
	// 案例分类是否默认
		public interface CaseCategoryDefault {
			String CODE = "CASE_CATEGORY_DEFAULT";
			String YES = "Y"; // 默认
			String NO = "N"; // 非默认
		}
	
	
}

package me.bunny._b._core;

import me.bunny.kernel._c.Cs;

/**
 * @author JIAZJ
 *
 */
public interface Constants extends Cs {
	
	public static final int PAGE_SIZE = 100;
	
	public static final int CURRENT_PAGE = 0;
	
	public static final String REGEX_ORGANIZATION_CODE = "^[0-9A-Z]{8}-[0-9|X]$";
	
	public static final String REGEX_THREE_UNION_CODE = "^([0-9A-Z]){18}$";
	
	public static final String COMMA = ",";
	public static final String DOT = ".";
	public static final String SLASH = "/";
	
	public static final String FULL_DATE = "yyyy-MM-dd HH:mm:ss";
	public static final String DATE = "yyyy-MM-dd";
	
	/**
	 * 是否启用
	 * @author Lx
	 *
	 */
	public interface isEnable{
		String codeType = "isEnable";
		
		String enable = "1";
		String disable ="0";
	}
	
}

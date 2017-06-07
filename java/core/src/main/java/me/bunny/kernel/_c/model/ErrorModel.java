/**
 * 
 */
package me.bunny.kernel._c.model;

/**
 * ClassName: ErrorModel
 * <pre>
 * Function: TODO
 * </pre>
 * @author 张军
 * @Date 2017年5月15日 下午4:27:49
 *
 */

public class ErrorModel  implements JModel{


    private String code;
    private String type; //sys bys
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
    	
  public static ErrorModel  sys(String code){
	  ErrorModel errorModel = new ErrorModel();
	  errorModel.setCode(code);
	  errorModel.setType("SYS");
	return    errorModel;
  }
  
  public static ErrorModel  bys(String code){
	  ErrorModel errorModel = new ErrorModel();
	  errorModel.setCode(code);
	  errorModel.setType("BYS");
	return    errorModel;
  }
	
}

package me.bunny.kernel._c;

import me.bunny.kernel.BusinessException;

/**
 * for any validating exception
 * @author J
 *
 */
public class ValidationException extends BusinessException {

	public ValidationException(String message){
		super(message);
	}
	
	public ValidationException(Exception e){
		super(e);
	}
	
}

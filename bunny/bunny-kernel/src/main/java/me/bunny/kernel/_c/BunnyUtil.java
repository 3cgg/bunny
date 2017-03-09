package me.bunny.kernel._c;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public abstract class BunnyUtil {

	/**
	 * check the {@param string} is null or empty . 
	 * @param string
	 * @return
	 */
	public static boolean isNullOrEmpty(String string){
		return string==null||"".equals(string.trim());
	}
	
	/**
	 * check the {@param string} is not null or empty . 
	 * @param string
	 * @return
	 */
	public static boolean isNotNullOrEmpty(String string){
		return string!=null&&!"".equals(string.trim());
	}
	
	/**
	 * extract all bytes from the {@link InputStream}. 	
	 * @param input
	 * @return
	 * @throws JUtilException	
	 */
	public static byte[] getBytes(InputStream input) {
	    ByteArrayOutputStream output = new ByteArrayOutputStream();
	    byte[] buffer = new byte[4096];
	    int n = 0;
	    try {
			while (-1 != (n = input.read(buffer))) {
			    output.write(buffer, 0, n);
			}
			output.flush();
		} catch (IOException e) {
			throw new BunnyException(e);
		}
	    return output.toByteArray();
	}
	
}

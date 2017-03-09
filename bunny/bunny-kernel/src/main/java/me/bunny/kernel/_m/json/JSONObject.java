/**
 * 
 */
package me.bunny.kernel._m.json;

import java.io.Serializable;

/**
 * An interface the indicates the Object itself can custom define those properties which can be serialized by {@link JSON}.
 * @author J
 */
public interface JSONObject <T> extends Serializable {
	
	
	/**
	 * return a serializable Object
	 * @return
	 */
	T serializableJSONObject(); 
	
}

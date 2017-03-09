package me.bunny.kernel._m.json;

import java.io.ByteArrayOutputStream;
import java.text.SimpleDateFormat;
import java.util.Map;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

import me.bunny.kernel._c.BunnyException;
import me.bunny.kernel._c.BunnyUtil;


/**
 * JJSON class contains a single self.  
 * All operation related JSON can be processed through the class. 
 * @author Administrator
 *
 */
public class JSON {
	
	private ObjectMapper mapper = new ObjectMapper(); // can reuse, share globally
	{
		//always default
		mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		mapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
	}
	private static final JSON INSTANCE=new JSON();
	
	private JSON(){}
	
	/**
	 * a default JSON returned,the JSON use default configuration in the commons-json.properties under the class path,
	 * the method in the level of the platform scope.
	 * @return
	 */
	public static final JSON instance(){
		return INSTANCE;
	}
	
	/**
	 * use the passed configuration to construct a JSON utilization,the method is only temporally to fit with your requirement,
	 * must not be used in the platform scope. 
	 * @param config
	 * @return
	 */
	public static JSON getJSON(JSONConfig config){
		JSON json=new JSON();
		String dateFormat=config.getDateFormat();
		
		if(BunnyUtil.isNotNullOrEmpty(dateFormat)){
			json.mapper.setDateFormat(new SimpleDateFormat(dateFormat));
		}
		return json;
	}
	
	/**
	 * Parse a string 
	 * @param string
	 * @return
	 */
	public Map<String, Object> parse(String string){
		try {
			return mapper.readValue(string, new TypeReference<Map<String, Object>>() {
			});
		} catch (Exception e) {
			throw new BunnyException(e);
		} 
	}  
	
	/**
	 * Parse a string to Object . 
	 * @param string
	 * @param t
	 * @return
	 */
	public <T> T parse(String string, Class<T> t){
		try {
			return mapper.readValue(string, t);
		} catch (Exception e) {
			throw new BunnyException(e);
		} 
	}  
	
	/**
	 * Parse a string to Object . 
	 * @param string
	 * @param typeReference
	 * @return
	 */
	public <T> T parse(String string, TypeReference<T> typeReference){
		try {
			return mapper.readValue(string, typeReference);
		} catch (Exception e) {
			throw new BunnyException(e);
		} 
	}  

	/**
	 * format object to string
	 * <strong>Replace by {@link #formatObject(Object)} due to any potential implicit invoke.</strong>
	 * @param object
	 * @return
	 */
	@Deprecated
	public String format(Object object){
		try {
			ByteArrayOutputStream out=new ByteArrayOutputStream();
			mapper.writeValue(out, object);
			return out.toString("UTF-8");
			
		} catch (Exception e) {
			throw new BunnyException(e);
		} 
	}
	
	/**
	 * format object returned by the method {@link JSONObject#serializableJSONObject()}
	 * @param jsonObject
	 * @return
	 */
	public String formatJSONObject(JSONObject<?> jsonObject){
		try {
			ByteArrayOutputStream out=new ByteArrayOutputStream();
			mapper.writeValue(out, jsonObject.serializableJSONObject());
			return out.toString("UTF-8");
		} catch (Exception e) {
			throw new BunnyException(e);
		} 
	}
	
	/**
	 * format object to string
	 * @param object
	 * @return
	 */
	public String formatObject(Object object){
		try {
			ByteArrayOutputStream out=new ByteArrayOutputStream();
			mapper.writeValue(out, object);
			return out.toString("UTF-8");
		} catch (Exception e) {
			throw new BunnyException(e);
		} 
	}
	

	
}	


package me.bunny.kernel._c._random;

import java.util.Date;

import me.bunny.kernel._c.meta.JDefaultFieldMeta;
import me.bunny.util.JDateUtils;

public class JFieldRandom<T> implements JRandom<JRandom<T>> {

	private final JDefaultFieldMeta fieldMeta;
	
	public JFieldRandom(JDefaultFieldMeta fieldMeta) {
		this.fieldMeta = fieldMeta;
	}

	@Override
	public JRandom<T> random() {
		JRandom<?> random = null;
		Class<?> type = fieldMeta.getType();
		if (String.class == type) {
			String fieldName=fieldMeta.getFieldName();
			if(fieldName.contains("Date")){
				random = new JRandomBinder.JDefaultStringRandom(){
					@Override
					public String random() {
						Date date=new JRandomBinder.JDefaultDateRandom().random();
						return JDateUtils.format(date);
					}
				};
			}else if(fieldName.contains("Time")){
				random = new JRandomBinder.JDefaultStringRandom(){
					@Override
					public String random() {
						Date date=new JRandomBinder.JDefaultTimestampRandom().random();
						return JDateUtils.format(date,"yyyy-MM-dd HH:mm:ss");
					}
				};
			}else {
				random =  new JRandomBinder.JDefaultStringRandom();
			}
		} else{
			random=new JTypeRandom<>(fieldMeta.getType());
		}
		return (JRandom<T>) random;
	}

}

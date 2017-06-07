package me.bunny.kernel._c._random;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

public class JTypeRandom<T> implements JRandom<JRandom<T>> {

	private final Class<?> clazz;

	public JTypeRandom(Class<?> clazz) {
		this.clazz = clazz;
	}

	@SuppressWarnings("unchecked")
	@Override
	public JRandom<T> random() {
		// use default.
		JRandom<?> random = null;
		Class<?> type = clazz;
		if (String.class == type) {
			random =  new JRandomBinder.JDefaultStringRandom();
		} else if (Integer.class == type || int.class == type) {
			random = new JRandomBinder.JDefaultIntRandom();
		} else if (Long.class == type || long.class == type) {
			random = new JRandomBinder.JDefaultLongRandom();
		} else if (Double.class == type || double.class == type) {
			random = new JRandomBinder.JDefaultDoubleRandom();
		} else if (Boolean.class == type || boolean.class == type) {
			random = new JRandomBinder.JDefaultBooleanRandom();
		} else if (Float.class == type || float.class == type) {
			random = new JRandomBinder.JDefaultFloatRandom();
		} else if (Date.class == type) {
			random = new JRandomBinder.JDefaultDateRandom();
		} else if (Timestamp.class == type) {
			random = new JRandomBinder.JDefaultTimestampRandom();
		} else if (BigDecimal.class == type) {
			random = new JRandomBinder.JDefaultBigDecimalRandom();
		} else {
			random = new JRandomBinder.JDefaultFieldTypeRandom(clazz);
		}
		return (JRandom<T>) random;
	}

}

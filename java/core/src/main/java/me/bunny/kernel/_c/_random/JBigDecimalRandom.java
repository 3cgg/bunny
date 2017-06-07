package me.bunny.kernel._c._random;

import java.math.BigDecimal;

public interface JBigDecimalRandom extends JRandom<BigDecimal> {
	@Override
	public BigDecimal random();
	
}

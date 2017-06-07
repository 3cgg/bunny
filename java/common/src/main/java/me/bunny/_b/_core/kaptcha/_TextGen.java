package me.bunny._b._core.kaptcha;

import org.apache.commons.lang3.RandomUtils;
import org.springframework.stereotype.Component;

import me.bunny._b._core.KaptchaRepository.TextGen;

@Component
public class _TextGen implements TextGen<Object> {

	@Override
	public String text(Object context) throws Exception {
		String str="";
		str+=RandomUtils.nextInt(1, 10);
		str+=RandomUtils.nextInt(1, 10);
		str+=RandomUtils.nextInt(1, 10);
		str+=RandomUtils.nextInt(1, 10);
		return str;
	}

}

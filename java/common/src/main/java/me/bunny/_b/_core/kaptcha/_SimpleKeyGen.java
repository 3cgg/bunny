package me.bunny._b._core.kaptcha;

import org.springframework.stereotype.Component;

import me.bunny._b._core.KaptchaRepository.KeyGen;

@Component
public class _SimpleKeyGen implements KeyGen {

	@Override
	public String key(KaptchaVO kaptchaVO) throws Exception {
		return kaptchaVO.getKaptchaId();
	}

}

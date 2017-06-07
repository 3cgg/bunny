package me.bunny._b._core.kaptcha;

import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

import me.bunny.AppConfig._Config;
import me.bunny._b._core.KaptchaRepository;
import me.bunny.kernel._c.cache.RedisCacheService;
import me.bunny.util.JStringUtils;

@Component
@Primary
public class _RedisKaptchaRepository implements KaptchaRepository<String, String> {
	
	@Autowired(required=false)
	private RedisCacheService<String, String> redisCacheService;
	
	@Autowired
	private _Config config;
	
	@Override
	public void store(String key, String value) throws Exception {
		redisCacheService.expire(key, value, config.getKaptcha().getExpiredTime(), TimeUnit.SECONDS);
	}

	@Override
	public boolean exists(String key, String value) throws Exception {
		String val=redisCacheService.get(key);
		if(JStringUtils.isNullOrEmpty(val)){
			return false;
		}
		return val.equals(value);
	}

	@Override
	public boolean remove(String key) throws Exception {
		redisCacheService.remove(key);
		return true;
	}
	
	
}

package me.bunny.kernel;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@ConfigurationProperties(prefix="cpp")
@Component
public class _Cfg {

	private JWT jwt;
	
	private Auth auth;
	
	private EhcacheCfg ehcache;
	
	private FileCfg file;
	
	private RedisCfg redis;
	
	private MockCfg mock;
	
	public MockCfg getMock() {
		return mock;
	}

	public void setMock(MockCfg mock) {
		this.mock = mock;
	}

	public RedisCfg getRedis() {
		return redis;
	}

	public void setRedis(RedisCfg redis) {
		this.redis = redis;
	}

	public FileCfg getFile() {
		return file;
	}

	public void setFile(FileCfg file) {
		this.file = file;
	}

	public JWT getJwt() {
		return jwt;
	}

	public void setJwt(JWT jwt) {
		this.jwt = jwt;
	}

	public Auth getAuth() {
		return auth;
	}

	public void setAuth(Auth auth) {
		this.auth = auth;
	}
	
	
	public EhcacheCfg getEhcache() {
		return ehcache;
	}

	public void setEhcache(EhcacheCfg ehcache) {
		this.ehcache = ehcache;
	}

	
	public static class Auth{
		
		private boolean authentication;
		
		private boolean authorization;

		public boolean isAuthentication() {
			return authentication;
		}

		public void setAuthentication(boolean authentication) {
			this.authentication = authentication;
		}

		public boolean isAuthorization() {
			return authorization;
		}

		public void setAuthorization(boolean authorization) {
			this.authorization = authorization;
		}
		
		
	}
	
	public static class JWT{
		private String secret;
		
		private long expiration;
		
		private String header;
		
		public String getSecret() {
			return secret;
		}
		public void setSecret(String secret) {
			this.secret = secret;
		}
		public long getExpiration() {
			return expiration;
		}
		public void setExpiration(long expiration) {
			this.expiration = expiration;
		}
		public String getHeader() {
			return header;
		}
		public void setHeader(String header) {
			this.header = header;
		}
		
		
	}

	public static class EhcacheCfg{
		
		private String name;

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}
	}
	
	public static class RedisCfg{
		
		private long expiredTime;

		private boolean redisOffProxy;

		public boolean isRedisOffProxy() {
			return redisOffProxy;
		}

		public void setRedisOffProxy(boolean redisOffProxy) {
			this.redisOffProxy = redisOffProxy;
		}
		
		public long getExpiredTime() {
			return expiredTime;
		}

		public void setExpiredTime(long expiredTime) {
			this.expiredTime = expiredTime;
		}
	}
	
	public static class FileCfg{
		
		private String dskPath;

		public String getDskPath() {
			return dskPath;
		}

		public void setDskPath(String dskPath) {
			this.dskPath = dskPath;
		}
		
	}
	
	public static class MockCfg{
		
		private boolean enable;
		
		private String headerKey;

		public boolean isEnable() {
			return enable;
		}

		public void setEnable(boolean enable) {
			this.enable = enable;
		}

		public String getHeaderKey() {
			return headerKey;
		}

		public void setHeaderKey(String headerKey) {
			this.headerKey = headerKey;
		}
		
		
	}
	
	
	
}

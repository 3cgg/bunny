package me.bunny.kernel._c.service;

public interface SpringApplicationServiceGetService {

	public Object getService(Class<?> clazz);
	
	public Object getService(String serviceName);
	
}

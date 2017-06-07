package me.bunny.kernel._c.async;

import java.util.concurrent.Callable;

import me.bunny.util.JUniqueUtils;

public abstract class CallableTask<V> implements Callable<V> {
	
	 protected String name(){
		 return JUniqueUtils.unique();
	 }
	
}

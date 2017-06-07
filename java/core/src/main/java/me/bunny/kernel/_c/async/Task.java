package me.bunny.kernel._c.async;

import me.bunny.util.JUniqueUtils;

public abstract class Task implements Runnable {
	
	 protected String name(){
		 return JUniqueUtils.unique();
	 }
	
}

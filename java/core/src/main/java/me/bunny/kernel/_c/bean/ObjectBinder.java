package me.bunny.kernel._c.bean;

import me.bunny.kernel._c._i.JDataBinder;

public interface ObjectBinder<I,T> extends JDataBinder {

	T createObject(I content);
	
}

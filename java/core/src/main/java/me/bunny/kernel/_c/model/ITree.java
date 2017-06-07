/**
 * 
 */
package me.bunny.kernel._c.model;

/**
 * 树结构接口定义
 * @author xiongp
 */
public interface ITree extends JModel{

	String getId();

	String getName();

	String getParentId();

	Integer getSequence();
}

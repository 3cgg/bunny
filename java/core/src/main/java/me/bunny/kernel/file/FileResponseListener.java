package me.bunny.kernel.file;

import me.bunny.kernel._c.model.JModel;

public interface FileResponseListener<O extends JModel> {

	/**
	 * 
	 * @param fileResponse
	 * @return the identifier it's a URI or primary of certain table
	 * @throws Exception
	 */
	O on(FileTransfer.FileResponse fileResponse) throws Exception;
	
	
}

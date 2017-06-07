package me.bunny._b._core.attachment.service;

import me.bunny._b._core.attachment.vo.AttachmentInfo;
import me.bunny._b._core.attachment.vo.AttachmentRecordVO;

public interface AttachmentService {

	String saveAttachment(AttachmentInfo attachmentInfo);
	
	AttachmentRecordVO getAttachment(String id);
	
}

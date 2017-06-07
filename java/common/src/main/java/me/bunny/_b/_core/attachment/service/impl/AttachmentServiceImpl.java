package me.bunny._b._core.attachment.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import me.bunny._b._core.attachment.model.Attachment;
import me.bunny._b._core.attachment.service.AttachmentService;
import me.bunny._b._core.attachment.vo.AttachmentInfo;
import me.bunny._b._core.attachment.vo.AttachmentRecordVO;
import me.bunny.kernel._c.service.SingleEntityManager;
import me.bunny.kernel._c.service.SingleEntityManagerGetter;
import me.bunny.util.Copy;

@Service
@Transactional
public class AttachmentServiceImpl implements AttachmentService {

	private SingleEntityManager<Attachment> attachmentEntityManager= SingleEntityManagerGetter.get()
			.getInstance(Attachment.class);

	
	@Override
	public String saveAttachment(AttachmentInfo attachmentInfo) {
		Attachment attachment=Copy.simpleCopy(attachmentInfo, Attachment.class);
		attachmentEntityManager.saveOnly(attachment);
		return attachment.getId();
	}

	@Override
	public AttachmentRecordVO getAttachment(String id) {
		return attachmentEntityManager.singleEntityQuery2()
					.active(id)
					.ready().model(AttachmentRecordVO.class);
	}
	
}

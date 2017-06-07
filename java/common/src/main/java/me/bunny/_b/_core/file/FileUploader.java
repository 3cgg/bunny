package me.bunny._b._core.file;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import me.bunny._b._core.attachment.vo.AttachmentRecordVO;
import me.bunny.kernel._c.model.InvokeResult;
import me.bunny.kernel._fn.Try;
import me.bunny.kernel.file.FileResponseListener;
import me.bunny.kernel.file.FileTransfer;
import me.bunny.kernel.mvc.SpringCallable;
import me.bunny.util.JStringUtils;
import me.bunny.util.JUniqueUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

/**
 * 
 * @author J
 *
 */
@Controller
@RequestMapping("/file")
public class FileUploader {
	
	@Autowired
	private FileTransfer fileTransfer;
	
	@Autowired
	private FileResponseListener<AttachmentRecordVO> fileResponseListener;
	
	@ResponseBody
	@RequestMapping(path="/upload",method=RequestMethod.POST)
	public SpringCallable<InvokeResult> upload(@RequestParam(name="name",required=false) String name,
                                               @RequestParam("file") MultipartFile file) throws Exception {
		
		return new SpringCallable<InvokeResult>() {
			@Override
			public InvokeResult doCall() throws Exception {
				if (!file.isEmpty()) {
					FileTransfer.FileRequest fileRequest=new FileTransfer.FileRequest();
					fileRequest.set_i_d(JUniqueUtils.unique());
					fileRequest.setName(JStringUtils.isNullOrEmpty(name) ? file.getOriginalFilename(): name);
					fileRequest.setBytes(file.getBytes());
					List<FileTransfer.FileResponse> fileResponse=fileTransfer.transfer(Arrays.asList(fileRequest));
					List<AttachmentRecordVO> attachmentRecordVOs=new ArrayList<>();
					fileResponse.forEach(Try.apply(response->{
						AttachmentRecordVO attachmentRecordVO=fileResponseListener.on(response);
						attachmentRecordVOs.add( attachmentRecordVO);
					}));
					return InvokeResult.success(attachmentRecordVOs);
				}
				return InvokeResult.bys("file is missing.");
			}
		};
	}
	
	@RequestMapping(value="/batch/upload", method= RequestMethod.POST)
	@ResponseBody
    public SpringCallable<InvokeResult> batchUpload(HttpServletRequest request) throws Exception{
		
		return new SpringCallable<InvokeResult>(){
			@Override
			public InvokeResult doCall() throws Exception {
				Map<String,MultipartFile> map  =
						((MultipartHttpServletRequest)request).getFileMap();
				List<FileTransfer.FileRequest> fileRequests=new ArrayList<>();
				map.forEach(Try.<String,MultipartFile>accept((name,file)->{
					if (!file.isEmpty()) {
		            	FileTransfer.FileRequest fileRequest=new FileTransfer.FileRequest();
		    			fileRequest.set_i_d(JUniqueUtils.unique());
		    			fileRequest.setName(name.contains(".")?name:file.getOriginalFilename());
		    			fileRequest.setBytes(file.getBytes());
		    			fileRequests.add(fileRequest);
		            }
				}));
		        if(!fileRequests.isEmpty()){
		        	List<FileTransfer.FileResponse> fileResponses=fileTransfer.transfer(fileRequests);
		        	List<AttachmentRecordVO> attachmentRecordVOs=new ArrayList<>();
		        	fileResponses.forEach(Try.apply(response->{
						AttachmentRecordVO attachmentRecordVO=fileResponseListener.on(response);
						attachmentRecordVOs.add( attachmentRecordVO);
					}));
		        	return InvokeResult.success(attachmentRecordVOs);
		        }
		        return InvokeResult.bys("file is missing.");
			}
		};
		
    }
	
	
}

package me.bunny._b._core;

import me.bunny.kernel.Codes;
import me.bunny.kernel._c.model.InvokeResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/cfg")
public class ConfigController {

	@Autowired
	private Codes codes;
	
	@RequestMapping(path="/errorCode",method=RequestMethod.GET)
	@ResponseBody
	public InvokeResult errorCode() {
		return InvokeResult.success(codes);
	}
	
}

package me.bunny._b._core;

import me.bunny.kernel._c.async.Call;
import me.bunny.kernel._c.async.Catch;
import me.bunny.kernel._c.async.Task;
import me.bunny.kernel._c.async.TaskExecutor;
import me.bunny.kernel._c.model.InvokeResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/_test")
public class _TestController {

	@Autowired
	private TaskExecutor executor;
	
	@RequestMapping(path="/promise",method=RequestMethod.GET)
	@ResponseBody
	public InvokeResult promise() {
		
		executor.promise(new Task() {
			@Override
			public void run() {
				System.out.println(".............");
				throw new RuntimeException("=======-========");
			}
		}).then(new Call<Object,Object>() {
			@Override
			public Object call(Object input) {
				System.out.println("input : " +input);
				return null;
			}
		}).cat(new Catch() {
			@Override
			public void cat(Throwable error) {
				error.printStackTrace();
			}
		});
		
		return InvokeResult.success(true);
	}
	
	
}

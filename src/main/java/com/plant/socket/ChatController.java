package com.plant.socket;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ChatController {
	
	private String MODULE_NAME="include";
	
	@RequestMapping(value="/chat", method=RequestMethod.GET)
	public String chatFrom(@RequestParam(value="id") String id) {
		
		return MODULE_NAME+"/chat";  
	}
}

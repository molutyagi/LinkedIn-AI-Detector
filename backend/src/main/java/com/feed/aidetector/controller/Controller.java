package com.feed.aidetector.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/controller")
public class Controller {

	@GetMapping("/test")
	public String test() {
		return "This is a test controller";
	}

}

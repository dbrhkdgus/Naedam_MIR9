package com.naedam.mir9.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class AdminController {

	@RequestMapping("/")
	public String hello() {
		return "index";
	}


}

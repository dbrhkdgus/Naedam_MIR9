package com.naedam.mir9.option.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naedam.mir9.option.model.service.OptionService;

@Controller
@RequestMapping("/option")
public class OptionController {
	@Autowired
	private OptionService optionService;
}

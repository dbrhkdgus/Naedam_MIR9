package com.naedam.mir9.option.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.naedam.mir9.option.model.service.OptionService;

@RestController
@RequestMapping("/option")
public class OptionController {
	@Autowired
	private OptionService optionService;
}

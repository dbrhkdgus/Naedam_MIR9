package com.naedam.mir9.revision.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.naedam.mir9.revision.model.service.RevisionService;

@RestController
@RequestMapping("/revision")
public class RevisionController {
	@Autowired
	private RevisionService revisionService;
}

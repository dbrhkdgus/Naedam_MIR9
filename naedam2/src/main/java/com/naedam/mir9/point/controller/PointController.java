package com.naedam.mir9.point.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.naedam.mir9.point.model.service.PointService;

@RestController
@RequestMapping("/point")
public class PointController {
	@Autowired
	private PointService pointService;
}
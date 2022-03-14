package com.naedam.mir9.delivery.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.naedam.mir9.delivery.model.service.DeliveryService;

@RestController
@RequestMapping("/delivery")
public class DeliveryController {
	@Autowired
	private DeliveryService deliveryService;
}

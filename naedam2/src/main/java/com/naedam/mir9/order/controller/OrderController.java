package com.naedam.mir9.order.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.naedam.mir9.order.model.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@GetMapping("/list")
	public String orderList() {
		
		return "order/orderList";
	}
	
	@GetMapping("/logList")
	public String paymentLogList() {
		
		return "order/logList";
	}
}

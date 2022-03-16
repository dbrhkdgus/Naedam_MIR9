package com.naedam.mir9.order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naedam.mir9.order.model.service.OrderService;
import com.naedam.mir9.order.model.vo.Order;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/order")
@Slf4j
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@GetMapping("/list")
	public String orderList(Model model) {
		List<Order> orderList = orderService.selectOrderList();
		int orderCnt = orderService.selectOrderCnt();
		
		model.addAttribute("orderList",orderList);
		model.addAttribute("orderCnt", orderCnt);
		
		return "order/orderList";
	}
	
	@GetMapping("/logList")
	public String paymentLogList() {
		
		return "order/logList";
	}
}

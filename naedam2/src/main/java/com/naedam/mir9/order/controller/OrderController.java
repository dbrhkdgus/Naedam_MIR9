package com.naedam.mir9.order.controller;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.naedam.mir9.order.model.service.OrderService;
import com.naedam.mir9.order.model.vo.Order;
import com.naedam.mir9.order.model.vo.OrderInfo;
import com.naedam.mir9.order.model.vo.OrderStatus;
import com.naedam.mir9.product.model.vo.Product;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/order")
@Slf4j
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	@GetMapping("/list")
	public String orderList(Model model) {
		Map<String, String> param = new HashMap<String, String>();
		orderListSetting(model, param);
		return "order/orderList";
	}
	
	@PostMapping("/list")
	public String orderSearch(HttpServletRequest request, Model model) {
		Map<String, String> param = new HashMap<String, String>();
		Enumeration params = request.getParameterNames();
		while (params.hasMoreElements()){
		    String name = (String)params.nextElement();
		    param.put(name, request.getParameter(name));
		}
		
		log.debug("param = {}", param);
		
		orderListSetting(model, param);
		
		return "order/orderList";
	}
	
	@ResponseBody
	@GetMapping("/orderDetail")
	public Map<String, Object> orderDetail(String orderNo) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		Order order = orderService.selectOneOrderByOrderNo(Long.parseLong(orderNo));
		OrderInfo orderInfo = orderService.selectOneOrderInfoByOrderNo(Long.parseLong(orderNo));
		Product product = orderService.selectOneProductByProductNo(order.getProductNo());
		System.out.println("orderInfo = " + orderInfo);
		System.out.println("order = " + order);
		System.out.println("product = " + product);
		
		map.put("orderInfo", orderInfo);
		map.put("order", order);
		map.put("product", product);
		return map;
	}
	
	@GetMapping("/logList")
	public String paymentLogList() {
		
		return "order/logList";
	}
	
	private void orderListSetting(Model model, Map<String, String> param) {
		
		List<Order> orderList = orderService.selectOrderList(param);
		List<OrderStatus> orderStatusList = orderService.selectOrderStatusList();
		int orderCnt = orderService.selectOrderCnt(param);
		
		model.addAttribute("orderList",orderList);
		model.addAttribute("orderCnt", orderCnt);
		model.addAttribute("orderStatusList", orderStatusList);
	}
}

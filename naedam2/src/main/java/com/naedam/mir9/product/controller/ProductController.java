package com.naedam.mir9.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naedam.mir9.product.model.service.productService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	private productService productService;
	
	@GetMapping("/list")
	public String productList() {
		
		return "product/productList";
	}
	
	@GetMapping("/category")
	public String productCategory() {
		
		return "product/productCategory";
	}
	
	@GetMapping("/option")
	public String productOption() {
		
		return "product/option";
	}
}

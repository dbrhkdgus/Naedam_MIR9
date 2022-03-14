package com.naedam.mir9.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.naedam.mir9.product.model.service.productService;

@RestController
@RequestMapping("/product")
public class ProductController {
	@Autowired
	private productService productService;
}

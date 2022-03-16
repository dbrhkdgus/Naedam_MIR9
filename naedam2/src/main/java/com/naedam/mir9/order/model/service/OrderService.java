package com.naedam.mir9.order.model.service;

import java.util.List;

import com.naedam.mir9.order.model.vo.Order;

public interface OrderService {

	List<Order> selectOrderList();

	int selectOrderCnt();

}

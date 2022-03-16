package com.naedam.mir9.order.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naedam.mir9.order.model.dao.OrderDao;
import com.naedam.mir9.order.model.vo.Order;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDao orderDao;

	@Override
	public List<Order> selectOrderList() {
		// TODO Auto-generated method stub
		return orderDao.selectOrderList();
		
		
	}

	@Override
	public int selectOrderCnt() {
		// TODO Auto-generated method stub
		return orderDao.selectOrderCnt();
	}
	
}

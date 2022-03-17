package com.naedam.mir9.order.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naedam.mir9.order.model.dao.OrderDao;
import com.naedam.mir9.order.model.vo.Order;
import com.naedam.mir9.order.model.vo.OrderDetail;
import com.naedam.mir9.order.model.vo.OrderInfo;
import com.naedam.mir9.order.model.vo.OrderStatus;
import com.naedam.mir9.product.model.vo.Product;
import com.naedam.mir9.product.model.vo.ProductImg;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDao orderDao;

	@Override
	public List<Order> selectOrderList(Map<String, String> param) {
		// TODO Auto-generated method stub
		return orderDao.selectOrderList(param);
		
		
	}

	@Override
	public int selectOrderCnt(Map<String, String> param) {
		// TODO Auto-generated method stub
		return orderDao.selectOrderCnt(param);
	}

	@Override
	public List<OrderStatus> selectOrderStatusList() {
		// TODO Auto-generated method stub
		return orderDao.selectOrderStatusList();
	}


	@Override
	public int updateOrderStaus(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return orderDao.updateOrderStaus(param);
	}

	@Override
	public int updateAdminMemo(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return orderDao.updateAdminMemo(param);
	}

	@Override
	public OrderDetail selectOneOrderDetailByOrderNo(long orderNo) {
		// TODO Auto-generated method stub
		return orderDao.selectOneOrderDetailByOrderNo(orderNo);
	}
	
	

	
	
	
	
	
}

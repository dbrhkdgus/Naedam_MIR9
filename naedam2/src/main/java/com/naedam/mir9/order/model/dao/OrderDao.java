package com.naedam.mir9.order.model.dao;

import java.util.List;

import com.naedam.mir9.order.model.vo.Order;

public interface OrderDao {

	List<Order> selectOrderList();

	int selectOrderCnt();

}

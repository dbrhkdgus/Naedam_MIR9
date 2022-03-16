package com.naedam.mir9.order.model.service;

import java.util.List;
import java.util.Map;

import com.naedam.mir9.order.model.vo.Order;
import com.naedam.mir9.order.model.vo.OrderInfo;
import com.naedam.mir9.order.model.vo.OrderStatus;
import com.naedam.mir9.product.model.vo.Product;

public interface OrderService {

	List<Order> selectOrderList(Map<String, String> param);

	int selectOrderCnt(Map<String, String> param);

	List<OrderStatus> selectOrderStatusList();

	OrderInfo selectOneOrderInfoByOrderNo(long orderNo);

	Order selectOneOrderByOrderNo(long orderNo);

	Product selectOneProductByProductNo(int productNo);

	

}

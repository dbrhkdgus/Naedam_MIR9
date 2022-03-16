package com.naedam.mir9.order.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naedam.mir9.order.model.vo.Order;
import com.naedam.mir9.order.model.vo.OrderInfo;
import com.naedam.mir9.order.model.vo.OrderStatus;
import com.naedam.mir9.product.model.vo.Product;

@Repository
public class OrderDaoImpl implements OrderDao {
	@Autowired
	private SqlSession session;

	@Override
	public List<Order> selectOrderList(Map<String, String> param) {
		// TODO Auto-generated method stub
		return session.selectList("order.selectOrderList", param);
	}

	@Override
	public int selectOrderCnt(Map<String, String> param) {
		// TODO Auto-generated method stub
		return session.selectOne("order.selectOrderCnt",param);
	}

	@Override
	public List<OrderStatus> selectOrderStatusList() {
		// TODO Auto-generated method stub
		return session.selectList("order.selectOrderStatusList");
	}

	@Override
	public OrderInfo selectOneOrderInfoByOrderNo(long orderNo) {
		// TODO Auto-generated method stub
		return session.selectOne("order.selectOneOrderInfoByOrderNo",orderNo);
	}

	@Override
	public Order selectOneOrderByOrderNo(long orderNo) {
		// TODO Auto-generated method stub
		return session.selectOne("order.selectOneOrderByOrderNo", orderNo);
	}

	@Override
	public Product selectOneProductByProductNo(int productNo) {
		// TODO Auto-generated method stub
		return session.selectOne("order.selectOneProductByProductNo", productNo);
	}
	
	
	
	
}

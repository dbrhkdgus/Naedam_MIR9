package com.naedam.mir9.order.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naedam.mir9.order.model.vo.Order;

@Repository
public class OrderDaoImpl implements OrderDao {
	@Autowired
	private SqlSession session;

	@Override
	public List<Order> selectOrderList() {
		// TODO Auto-generated method stub
		return session.selectList("order.selectOrderList");
	}

	@Override
	public int selectOrderCnt() {
		// TODO Auto-generated method stub
		return session.selectOne("order.selectOrderCnt");
	}
	
	
}

package com.naedam.mir9.option.model.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OptionDaoImpl implements OptionDao {
	@Autowired
	private SqlSession session;

	@Override
	public int insertOption(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return session.insert("option.insertOption", param);
	}
	
	
}

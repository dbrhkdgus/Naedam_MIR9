package com.naedam.mir9.option.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OptionDaoImpl implements OptionDao {
	@Autowired
	private SqlSession session;
}

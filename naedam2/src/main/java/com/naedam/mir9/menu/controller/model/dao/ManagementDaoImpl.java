package com.naedam.mir9.menu.controller.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ManagementDaoImpl implements ManagementDao {
	@Autowired
	private SqlSession session;
}

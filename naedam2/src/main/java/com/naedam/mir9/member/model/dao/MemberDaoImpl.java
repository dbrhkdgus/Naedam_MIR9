package com.naedam.mir9.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naedam.mir9.member.model.vo.MemberGrade;

@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SqlSession session;

	@Override
	public MemberGrade test() {
		// TODO Auto-generated method stub
		return session.selectOne("member.test");
	}
	
	
}

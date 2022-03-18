package com.naedam.mir9.option.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naedam.mir9.option.model.dao.OptionDao;

@Service

public class OptionServiceImpl implements OptionService {
	@Autowired
	private OptionDao optionDao;

	@Override
	public int insertOption(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return optionDao.insertOption(param);
	}

	@Override
	public int insertOptionValue(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}

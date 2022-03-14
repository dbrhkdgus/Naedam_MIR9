package com.naedam.mir9.option.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naedam.mir9.option.model.dao.OptionDao;

@Service

public class OptionServiceImpl implements OptionService {
	@Autowired
	private OptionDao optionDao;
}

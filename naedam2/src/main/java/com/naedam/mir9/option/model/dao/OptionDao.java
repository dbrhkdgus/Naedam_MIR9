package com.naedam.mir9.option.model.dao;

import java.util.List;
import java.util.Map;

import com.naedam.mir9.option.model.vo.Option;
import com.naedam.mir9.option.model.vo.OptionValue;
import com.naedam.mir9.option.model.vo.ProductOption;

public interface OptionDao {

	int insertOption(Map<String, Object> param);

	int insertOptionValue(Map<String, Object> param);

	List<Option> selectOptionList();

	ProductOption selectOneProductOptionByoptionNo(int optionNo);

	List<OptionValue> selectOptionValueListByOptionNo(int optionNo);

}

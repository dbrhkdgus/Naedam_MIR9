package com.naedam.mir9.option.model.service;

import java.util.Map;

public interface OptionService {

	int insertOption(Map<String, Object> param);

	int insertOptionValue(Map<String, Object> param);

}

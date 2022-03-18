package com.naedam.mir9.option.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.naedam.mir9.common.Mir9Utils;
import com.naedam.mir9.option.model.service.OptionService;

@Controller
@RequestMapping("/option")
public class OptionController {
	@Autowired
	private OptionService optionService;
	
	@SuppressWarnings("unchecked")
	@ResponseBody
	@PostMapping("/insert")
	public int insertOption(@RequestBody String jsonStr) {
		Map<String, Object> map = Mir9Utils.parseJsonStr(jsonStr);
		int result = 0;
		
		ArrayList<String> valueList = (ArrayList<String>) map.get("option_value");
		ArrayList<String> valueCostList = (ArrayList<String>) map.get("option_value_cost");
		
		for(int i = 0; i < valueList.size(); i++) {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("optionValue", valueList.get(i));
			param.put("optionValueCost", valueCostList.get(i));
			
			System.out.println(param);
			
		}
		
		System.out.println(map);
		
		return result;
	}
}

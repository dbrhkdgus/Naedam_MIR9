package com.naedam.mir9.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("/member")
public class MemberController {


	
	@RequestMapping("/list")
	public String memberList() {
		
		return "member/memberList";
	}
	
	@GetMapping("/wdw")
	public String withdarawalMemberList() {
		
		return "member/withdrawalMemberList";
	}
	
	@GetMapping("/accesshistory")
	public String memberAccessHistory() {
		
		return "member/memberAccessHistory";
	}
	
	@GetMapping("/grade")
	public String memberGrade() {
		
		return "member/memberGrade";
	}
	
	@GetMapping("/pointList")
	public String memberPointList() {
		
		return "member/memberPointList";
	}
}

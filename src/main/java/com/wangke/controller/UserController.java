package com.wangke.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class UserController {
	@RequestMapping("list.do")
	public String list (Model m){
		m.addAttribute("test","测试代码");
		return "test";
	}
}

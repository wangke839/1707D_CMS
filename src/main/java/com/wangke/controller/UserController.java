package com.wangke.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.wangke.service.IndexService;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private IndexService is;
	
	/**
	 * 
	    * @Title: list
	    * @Description: 显示普通用户界面
	    * @param @param m
	    * @param @return    参数
	    * @return String    返回类型
	    * @throws
	 */
	@RequestMapping("list.do")
	public String list (Model m,@RequestParam(defaultValue="1")Integer pageNum){
		List list = is.showChannel();
		PageInfo info = is.getHotArticle(pageNum);
		List newArticles = is.getNewArticle(5);
		m.addAttribute("list", list);
		m.addAttribute("info", info);
		m.addAttribute("newArticles", newArticles);
		return "user/index";
	}
}

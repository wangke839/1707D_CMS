package com.wangke.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wangke.comm.ResultInformation;
import com.wangke.service.ArticleService;
import com.wangke.service.CategoryService;

@RequestMapping("article")
@Controller
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	@Autowired
	private CategoryService categoryService;
	@RequestMapping("showdetail")
	public String showDetail(Model m,Integer id) {
		
		List  article = articleService.getById(id); 
		m.addAttribute("article",article);
		return "article/detail";
		
	}
	@RequestMapping("getCategoryByChannel")
	@ResponseBody
	public ResultInformation getCategoryByChannel(int chnId) {
		//List<Category> categories =  
		List categories = categoryService.listByChannelId(chnId);
		return new ResultInformation(1, "",  categories);
		
	}
}

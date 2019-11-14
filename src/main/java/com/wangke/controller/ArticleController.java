package com.wangke.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wangke.bean.Article;
import com.wangke.service.ArticleService;

@RequestMapping("article")
@Controller
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	@RequestMapping("showdetail")
	public String showDetail(Model m,Integer id) {
		
		List  article = articleService.getById(id); 
		m.addAttribute("article", article);
		return "article/detail";
		
	}
}

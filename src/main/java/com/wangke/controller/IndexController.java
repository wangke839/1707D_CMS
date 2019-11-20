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
public class IndexController {
	@Autowired
	private IndexService is;
	
	@RequestMapping(value = {"index","/"})
	public String list (Model m,@RequestParam(defaultValue="1")Integer pageNum){
		//获取所有的频道
		List list = is.showChannel();
//		获得热点文章
		PageInfo info = is.getHotArticle(pageNum);
//		获得最新文章
		List newArticles = is.getNewArticle(5);
		m.addAttribute("list", list);
		m.addAttribute("info", info);
		m.addAttribute("newArticles", newArticles);
		return "user/index";
	}
}

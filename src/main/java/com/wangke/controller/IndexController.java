package com.wangke.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
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
	@Autowired
	private ElasticsearchTemplate elasticsearchTemplate;
	/**
	 * 
	    * @Title: list
	    * @Description: 主页显示
	    * @param @param m
	    * @param @param pageNum
	    * @param @return    参数
	    * @return String    返回类型
	    * @throws
	 */
	@RequestMapping(value = {"index","/"})
	public String list (Model m,@RequestParam(defaultValue="1")Integer pageNum){
		//获取所有的频道
		List list = is.showChannel();
//		获得热点文章
		PageInfo info = is.getHotArticle(pageNum);
//		获得最新文章
		List newArticles = is.getNewArticle(5);
//		获取图片文章
		List imgArticles = is.getImgArticle(5);
		m.addAttribute("list", list);
		m.addAttribute("info", info);
		m.addAttribute("newArticles", newArticles);
		m.addAttribute("imgArticles", imgArticles);
		return "user/index";
	}
	@RequestMapping("search")
	public String search(Model m,String key,@RequestParam(defaultValue="1")Integer pageNum){
		PageInfo info2 = is.findByTitle(pageNum,key);
		//获取所有的频道
		List list = is.showChannel();
//		获得热点文章
		PageInfo info = is.getHotArticle(pageNum);
//		获得最新文章
		List newArticles = is.getNewArticle(5);
//		获取图片文章
		List imgArticles = is.getImgArticle(5);
		m.addAttribute("info2", info2);
		m.addAttribute("key", key);
		m.addAttribute("list", list);
		m.addAttribute("info", info);
		m.addAttribute("newArticles", newArticles);
		m.addAttribute("imgArticles", imgArticles);
		return "user/index";
		
	}
}
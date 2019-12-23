package com.wangke.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.wangke.mapper.LinkMapper;
import com.wangke.service.IndexService;
import com.wangke.service.LinkService;

@Controller
public class IndexController {
	@Autowired
	private IndexService is;
	@Autowired
	private LinkMapper linkService;
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
//		获取友情链接
		List list2 = linkService.list();
		m.addAttribute("list", list);
		m.addAttribute("info", info);
		m.addAttribute("newArticles", newArticles);
		m.addAttribute("imgArticles", imgArticles);
		m.addAttribute("list2", list2);
		return "user/index";
	}
	@RequestMapping("search")
	public String search(Model m,String key,@RequestParam(defaultValue="1")Integer pageNum){
//		获得根据高量查询的文章
		PageInfo info2 = is.findByTitle(pageNum,key);
		//获取所有的频道
		List list = is.showChannel();
//		获得热点文章
		PageInfo info = is.getHotArticle(pageNum);
//		获得最新文章
		List newArticles = is.getNewArticle(5);
//		获取图片文章
		List imgArticles = is.getImgArticle(5);
//		获取友情链接
		List list2 = linkService.list();
		System.err.println(imgArticles);
		m.addAttribute("info2", info2);
		m.addAttribute("key", key);
		m.addAttribute("list", list);
		m.addAttribute("info", info);
		m.addAttribute("newArticles", newArticles);
		m.addAttribute("imgArticles", imgArticles);
		return "user/index";
		
	}
}

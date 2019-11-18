package com.wangke.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.wangke.bean.User;
import com.wangke.comm.CmsAssert;
import com.wangke.service.ArticleService;
import com.wangke.service.CategoryService;
import com.wangke.service.ChannelService;
import com.wangke.service.IndexService;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private IndexService is;
	@Autowired
	private ChannelService channelService;
	@Autowired
	private ArticleService articleService;
	@Autowired
	private CategoryService categoryService;
	
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
	
	/**
	 * 
	    * @Title: channel
	    * @Description: 频道跳转
	    * @param @param request
	    * @param @param chnId
	    * @param @param categoryId
	    * @param @param page
	    * @param @return    参数
	    * @return String    返回类型
	    * @throws
	 */
	@RequestMapping( "channel")
	public String channel(Model m, 
			@RequestParam(defaultValue = "1") int chnId,
			@RequestParam(defaultValue = "0") int categoryId,
			@RequestParam(defaultValue = "1") int pageNum) {
		
		
		// 回传参数数值
		m.addAttribute("chnId", chnId);
		m.addAttribute("categoryId", categoryId);
		
		//获取所有的频道
		List list = is.showChannel();
		m.addAttribute("list", list);
		
//		获得热点文章
		PageInfo info = is.getHotArticle(pageNum);
//		获得最新文章
		List newArticles = is.getNewArticle(5);
		m.addAttribute("list", list);
		m.addAttribute("info", info);
		m.addAttribute("newArticles", newArticles);
		
		// 获取这个频道下的所有的分类
		List categories =  categoryService.listByChannelId(chnId);
		m.addAttribute("categories", categories);
		
		PageInfo articles=  articleService.listByCat(chnId,categoryId,pageNum);
		m.addAttribute("articles", articles);
		
		
		
		return "user/channelindex";
	
	}
}

package com.wangke.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.wangke.bean.Article;
import com.wangke.bean.ArticleType;
import com.wangke.bean.Image;
import com.wangke.bean.User;
import com.wangke.comm.CONTAINT;
import com.wangke.comm.CmcException;
import com.wangke.comm.CmsAssert;
import com.wangke.comm.ResultInformation;
import com.wangke.service.ArticleService;
import com.wangke.service.CategoryService;
import com.wangke.service.FavariteService;

@RequestMapping("article")
@Controller
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	@Autowired
	private FavariteService favariteService;
	@Autowired
	private CategoryService categoryService;
	/**
	 * 
	    * @Title: showDetail
	    * @Description: TODO(这里用一句话描述这个方法的作用)
	    * @param @param m
	    * @param @param id
	    * @param @return    参数
	    * @return String    返回类型
	    * @throws
	 */
	@RequestMapping("showdetail")
	public String showDetail(Model m,Integer id) {
		
		Article  article = articleService.getById(id); 
		System.out.println("======================"+article);
		m.addAttribute("article",article);
		if(article.getArticleType()==ArticleType.HTML){
			return "article/detail";
		}else{
			Gson gson = new Gson();
			// 文章内容转换成集合对象
			List<Image> imgs = gson.fromJson(article.getContent(), List.class);
			article.setImgList(imgs);
			return "article/detailImg";
		}
		
	}
	@RequestMapping("getCategoryByChannel")
	@ResponseBody
	public ResultInformation getCategoryByChannel(int chnId) {
		//List<Category> categories =  
		List categories = categoryService.listByChannelId(chnId);
		return new ResultInformation(1, "",  categories);
		
	}
	@RequestMapping("favarite")
	@ResponseBody
	private ResultInformation favarite(HttpServletRequest request,int id) throws CmcException{
		User loginUser = (User) request.getSession().getAttribute(CONTAINT.USER_KEY);
		CmsAssert.AssertTrue(loginUser!=null, "亲，您尚未登录！！");
		int result = favariteService.favarite(id,loginUser.getId());
		CmsAssert.AssertTrue(result>0, "很遗憾，收藏失败！！");
		return new ResultInformation(1,"恭喜，收藏成功",null);
	}
}

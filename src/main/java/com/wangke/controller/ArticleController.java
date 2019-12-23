package com.wangke.controller;

import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
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
import com.wangke.service.FavoriteServicel;

@RequestMapping("article")
@Controller
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private FavoriteServicel favoriteServicel;
	@Autowired
	private RedisTemplate redisTemplate;
	@Autowired
	private ThreadPoolTaskExecutor executor;
	/**
	 * 
	    * @Title: showDetail
	    * @Description: 展示文章
	    * @param @param m
	    * @param @param id
	    * @param @return    参数
	    * @return String    返回类型
	    * @throws
	 */
	@RequestMapping("showdetail")
	public String showDetail(Model m,Integer id,HttpServletRequest request) {
		
		Article  article = articleService.getById(id); 
//		System.out.println("======================"+article);
		String key = "Hits_"+request.getRemoteAddr()+"_"+id;
		String str = (String) redisTemplate.opsForValue().get(key);
		if(str == null){
			executor.execute(new Runnable() {
				@Override
				public void run() {
					// TODO Auto-generated method stub
					article.setHits(article.getHits()+1);
					articleService.updateHits(article);
					System.err.println("点击量加1");
					redisTemplate.opsForValue().set(key, "",5,TimeUnit.MINUTES);
				}
			});
		}
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
	/**
	 * 
	    * @Title: getCategoryByChannel
	    * @Description: 通过频道获取文章
	    * @param @param chnId
	    * @param @return    参数
	    * @return ResultInformation    返回类型
	    * @throws
	 */
	@RequestMapping("getCategoryByChannel")
	@ResponseBody
	public ResultInformation getCategoryByChannel(int chnId) {
		//List<Category> categories =  
		List categories = categoryService.listByChannelId(chnId);
		return new ResultInformation(1, "",  categories);
		
	}
	/**\
	 * 
	    * @Title: favorite
	    * @Description: 收藏文章
	    * @param @param request
	    * @param @param id
	    * @param @return    参数
	    * @return ResultInformation    返回类型
	    * @throws
	 */
	@RequestMapping("favarite")
	@ResponseBody
	public ResultInformation favorite(HttpServletRequest request,int id){
		User loginUser = (User) request.getSession().getAttribute(CONTAINT.USER_KEY);
		CmsAssert.AssertTrue(loginUser != null, "用户未登录");
		int result = favoriteServicel.favorite(id,loginUser.getId(),request.getRequestURI());
		return new ResultInformation(result,"收藏失败",null);
	}
	
	
}

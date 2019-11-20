package com.wangke.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;
import com.wangke.bean.User;
import com.wangke.comm.CONTAINT;
import com.wangke.comm.CmcException;
import com.wangke.comm.CmsAssert;
import com.wangke.service.ArticleService;
import com.wangke.service.CategoryService;
import com.wangke.service.ChannelService;
import com.wangke.service.IndexService;
import com.wangke.service.UserServicde;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private IndexService is;
	@Autowired
	private UserServicde us;
	/*@Autowired
	private ChannelService channelService;*/
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
	@RequestMapping("channel")
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
	
	
	@RequestMapping("tologin")
	public String tologin (User user,HttpServletRequest request) throws CmcException{
		/*User logUser = us.login(user);
		if(logUser != null){
			request.getSession().setAttribute(CONTAINT.USER_KEY, logUser);
			return "user/index";
		}*/
		return "user/login";
		
	}
@RequestMapping("login.do")
public String login (User user,HttpServletRequest request) throws CmcException{
	User logUser = us.login(user);
		if(logUser != null){
			request.getSession().setAttribute(CONTAINT.USER_KEY, logUser);
			return logUser.getRole()==CONTAINT.USER_ROLE_ADMIN
					?"redirect:/admin/list.do":"redirect:/user/home";
		}else {
			request.setAttribute("errorMsg", "用户名或密码错误！！");
			request.setAttribute("user", user);
			return "user/login";
		}
	
	
}
	/**
	 * 处理用户提交的注册的数据
	 * @param request
	 * @param user
	 * @return
	 * @throws CmcException 
	 */
	@RequestMapping("register")
	public String register(HttpServletRequest request,User user) throws CmcException {
		
		
		int result = us.register(user);
		CmsAssert.AssertTrue(result>0,"用户注册失败，请稍后再试");
		return "user/login";
	}
	/**
	 * 
	    * @Title: loginOut
	    * @Description: 登出
	    * @param @param request
	    * @param @param user
	    * @param @return
	    * @param @throws CmcException    参数
	    * @return String    返回类型
	    * @throws
	 */
	@RequestMapping("loginOut")
	public String loginOut(HttpServletRequest request)  {
		request.getSession().removeAttribute(CONTAINT.USER_KEY);
		return "redirect:/";
	}
	
}

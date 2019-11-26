package com.wangke.controller;


import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.wangke.bean.Article;
import com.wangke.bean.Link;
import com.wangke.bean.User;
import com.wangke.comm.CONTAINT;
import com.wangke.comm.CmcException;
import com.wangke.comm.CmsAssert;
import com.wangke.comm.ResultInformation;
import com.wangke.service.ArticleService;
import com.wangke.service.LinkService;
import com.wangke.service.UserServicde;
/**
 * 
    * @ClassName: AmdinController
    * @Description: 管理员控制层
    * @author Dell
    * @date 2019年11月26日
    *
 */
@Controller
@RequestMapping("admin")
public class AmdinController {
	@Autowired
	private UserServicde us;
	@Autowired
	private LinkService linkService;
	@Autowired
	private ArticleService articleService;
	/**
	 * 
	    * @Title: list
	    * @Description: 管理员主界面
	    * @param @return    参数
	    * @return String    返回类型
	    * @throws
	 */
	@RequestMapping("list.do")
	public String list(){
		return "admin/index";
	}
	/**
	 * 
	    * @Title: users
	    * @Description: 用户管理界面
	    * @param @param m
	    * @param @param pageSize
	    * @param @param mohu
	    * @param @return    参数
	    * @return String    返回类型
	    * @throws
	 */
	@RequestMapping("users")
	public String users(Model m,@RequestParam(defaultValue="1")Integer pageSize,String mohu){
		PageInfo info  = us.showUsers(pageSize,mohu);
		m.addAttribute("info", info);
		m.addAttribute("mohu", mohu);
		return "admin/list";
	}
	@RequestMapping("index")
	public String index(Model m){
		
		return "admin/index2";
	}
	/**
	 * 
	    * @Title: lockuser
	    * @Description: 用户解封与禁用
	    * @param @return    参数
	    * @return Object    返回类型
	    * @throws
	 */
	@RequestMapping("lockuser.do")
	@ResponseBody
	public ResultInformation lockuser(int userId,int status){
		if(status!=CONTAINT.YES && status!=CONTAINT.WRONG){
			return new ResultInformation(CONTAINT.WRONG,"无效参数",null);
		}
		User user = us.getUserById(userId);
		if(user == null){
			return new ResultInformation(CONTAINT.WRONG,"用户不存在",null);
		}
		if(user.getLocked()==status) {
			return new ResultInformation(CONTAINT.WRONG,"无需做该操作",null);
		}
		boolean flog = us.updateStatus(userId,status);
		if(flog){
			return new ResultInformation(CONTAINT.YES,"恭喜您，处理成功",null);
		}else{
			return new ResultInformation(CONTAINT.WRONG,"数据处理失败",null);
		}
	}
	/**
	 * 
	    * @Title: articles
	    * @Description: 管理员获取文章列表    管理审核
	    * @param @param m
	    * @param @param status -1 全部  0 待审核  1 审核通过  2 审核未通过
	    * @param @param page
	    * @param @return    参数
	    * @return String    返回类型
	    * @throws
	 */
	@RequestMapping("articles")
	public String articles(Model m,
			@RequestParam(defaultValue="-1") int status,
			@RequestParam(defaultValue="1") Integer page) {
		//获取文章
		PageInfo articlePage =  articleService.getPageList(status,page);
		m.addAttribute("pageInfo", articlePage);
		m.addAttribute("status", status);
		
		return "admin/article/list";
	}
	/**
	 * @throws CmcException 
	 * 
	    * @Title: getArticle
	    * @Description: 对一篇详情文章进行处理
	    * @param @param m
	    * @param @param status
	    * @param @param page
	    * @param @return    参数
	    * @return String    返回类型
	    * @throws
	 */
	@RequestMapping("getArticle")
	@ResponseBody
	public ResultInformation getArticle(int id) throws CmcException {
		Article article = articleService.getDetailById(id);
		CmsAssert.AssertTrue(article!=null, "文章不存在");
		return new ResultInformation(1,"获取成功",article);
	}
	/**
	 * @throws CmcException 
	 * 
	    * @Title: applyArticle
	    * @Description: 审核文章  通过 不通过
	    * @param @param id
	    * @param @param status
	    * @param @return    参数
	    * @return ResultInformation    返回类型
	    * @throws
	 */
	@RequestMapping("applyArticle")
	@ResponseBody
	public ResultInformation applyArticle(int id,int status) throws CmcException {
		//判断文章是否崔仔
		Article article = articleService.checkExist(id);
		CmsAssert.AssertTrue(article!=null, "该文章已经不存在");
		//审核文章
		int result = articleService.apply(id,status);
		if(result>0) {
			return new ResultInformation(1,"处理成功",null);
		}else {
			return new ResultInformation(2,"处理失败",null);
		}
	}
	/**
	 * 
	    * @Title: setArticleHot
	    * @Description: 设置文章是否热门
	    * @param @param id
	    * @param @param status
	    * @param @return
	    * @param @throws CmcException    参数
	    * @return ResultInformation    返回类型
	    * @throws
	 */
	@RequestMapping("setArticleHot")
	@ResponseBody
	public ResultInformation setArticleHot(int id,int status) throws CmcException {
		//判断文章是否存在
		Article article = articleService.checkExist(id);
		CmsAssert.AssertTrue(article!=null, "该文章已经不存在");
		//审核文章
		int result = articleService.setHot(id,status);
		if(result>0) {
			return new ResultInformation(1,"处理成功",null);
		}else {
			return new ResultInformation(2,"处理失败",null);
		}
	}
	@RequestMapping("link")
	public String list(HttpServletRequest request, 
			@RequestParam(defaultValue="1") int pageNum) {
		
		PageInfo info = linkService.list(pageNum);
		request.setAttribute("info", info);
		return "admin/link/list";
		
		
	}
	@GetMapping("linkAdd")
	public String add(HttpServletRequest request) {
		request.setAttribute("link", new Link());
		return "admin/link/add";	 
	}
	
	@PostMapping("linkAdd")
	public String add(HttpServletRequest request,
			@Valid  @ModelAttribute("link") Link link,
			BindingResult result
			) throws CmcException {
		// 有错误 还在原来的页面
		if(result.hasErrors()) {
			return "admin/link/add";	
		}
		int result2 = linkService.add(link);
		// 没有错误跳转到列表页面
		return "redirect:link";
	}
	@PostMapping("deleteLink.do")
	@ResponseBody
	public ResultInformation deleteLink(HttpServletRequest request,int id) throws CmcException {
		int result = linkService.delLink(id);
		CmsAssert.AssertTrueHtml(result>0, "删除失败");
		return new ResultInformation(1,"删除失败",null);
	}
}

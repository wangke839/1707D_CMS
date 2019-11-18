package com.wangke.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.wangke.bean.User;
import com.wangke.comm.CONTAINT;
import com.wangke.comm.CmcException;
import com.wangke.comm.CmsAssert;
import com.wangke.comm.ResultInformation;
import com.wangke.service.UserServicde;
@Controller
@RequestMapping("admin")
public class AmdinController {

	@Autowired
	private UserServicde us;
	@RequestMapping("list.do")
	public String list(){
		return "admin/index";
	}
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
	
@RequestMapping("login")
	public String login (User user,HttpServletRequest request) throws CmcException{
		/*User logUser = us.login(user);
		if(logUser != null){
			request.getSession().setAttribute(CONTAINT.USER_KEY, logUser);
			return "user/index";
		}*/
		return "user/login";
		
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
		return "login";
	}
}

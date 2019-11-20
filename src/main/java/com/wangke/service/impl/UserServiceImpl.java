package com.wangke.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wangke.bean.User;
import com.wangke.comm.CONTAINT;
import com.wangke.comm.CmcException;
import com.wangke.comm.CmsAssert;
import com.wangke.comm.Md5;
import com.wangke.mapper.UserMapper;
import com.wangke.service.UserServicde;

@Service
public class UserServiceImpl implements UserServicde{

	@Autowired
	private UserMapper um;

	@Override
	public PageInfo showUsers(Integer pageSize, String mohu) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageSize, CONTAINT.PAGE_SIZE);
		List list = um.showUsers(mohu);
		PageInfo info = new PageInfo(list);
		return info;
	}

	@Override
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		return um.getUserById(userId);
	}

	@Override
	public boolean updateStatus(int userId, int status) {
		// TODO Auto-generated method stub
		return um.updateStatus(userId,status);
	}

	@Override
	public User  login(User user) {
		User loginUser = um.findByName(user.getUsername());
		if(loginUser==null)
			return null;
		
		// 计算加盐加密后的密码
		String pwdSaltMd5 = Md5.password(user.getPassword(),
				user.getUsername().substring(0, 2));
		System.out.println(pwdSaltMd5);
		//数据库中密码与用户输入的密码一致  则登录成功
		if(pwdSaltMd5.equals(loginUser.getPassword())) {
			return loginUser;
		}else {
			//登录失败
			return null;
		}
	}

	@Override
	public int register(User user) throws CmcException {
		
		// TODO Auto-generated method stub
		//用户名是否存在
		User existUser  =  um.findByName(user.getUsername());
		CmsAssert.AssertTrue(existUser==null,"该用户名已经存在");
				
		//加盐
		user.setPassword(Md5.password(user.getPassword(),
				user.getUsername().substring(0, 2)));
		return um.register(user);
		
	}

}

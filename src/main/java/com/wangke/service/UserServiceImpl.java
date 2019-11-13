package com.wangke.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wangke.bean.User;
import com.wangke.comm.CONTAINT;
import com.wangke.mapper.UserMapper;

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
}

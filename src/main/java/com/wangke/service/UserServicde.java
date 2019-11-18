package com.wangke.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.wangke.bean.User;
import com.wangke.comm.CmcException;

public interface UserServicde {

	PageInfo showUsers(Integer pageSize, String mohu);

	User getUserById(int userId);

	boolean updateStatus(int userId, int status);

	User login(User user);

	int register(User user) throws CmcException;

}

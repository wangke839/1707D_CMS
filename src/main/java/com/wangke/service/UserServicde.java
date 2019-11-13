package com.wangke.service;

import com.github.pagehelper.PageInfo;
import com.wangke.bean.User;

public interface UserServicde {

	PageInfo showUsers(Integer pageSize, String mohu);

	User getUserById(int userId);

	boolean updateStatus(int userId, int status);

}

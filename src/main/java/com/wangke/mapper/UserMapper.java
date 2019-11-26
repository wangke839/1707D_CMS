package com.wangke.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wangke.bean.User;

public interface UserMapper {

	List showUsers(@Param("mohu")String mohu);

	User getUserById(int userId);

	boolean updateStatus(@Param("userId")int userId,@Param("status") int status);

	List login(User user);

	int register(User user);

	User findByName(@Param("username")String username);

	
}

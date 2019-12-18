package com.wangke.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wangke.bean.User;
import com.wangke.service.UserServicde;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-beans.xml")
public class TestRedis {

//	7)  在项目中加入单独redis测试的类（10分）
//	8)  在测试类中注入redisTemplate模板对象和用户的usersSevice的业务对象（10分）
	@Autowired
	RedisTemplate redisTemplate;
	@Autowired
	UserServicde userServicde;
	
//	9)  在测试类中从数据库查询出一条用户信息，存储到redis中，成功（10分）
	@Test
	public void user(){
		 int userId = 32;
		User user = userServicde.getUserById(userId);
		redisTemplate.opsForValue().set("User", user);
		System.out.println("存储成功");
	}
//	10) 在测试类中从redis中，读取刚刚存储的用户信息，成功（10分）
	@Test
	public void get(){
		User user = (User) redisTemplate.opsForValue().get("User");
		System.out.println(user);
	}
}

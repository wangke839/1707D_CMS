package com.wangke.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wangke.bean.Article;
import com.wangke.mapper.ArticleRsp;
import com.wangke.mapper.IndexMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-beans.xml")
public class TestES {

	@Autowired
	ArticleRsp articleRsp;
	@Autowired
	IndexMapper indexMapper;
	@Test
	public void save(){
		List<Article> list = indexMapper.getAllArticle();
//		System.err.println(list);
		articleRsp.saveAll(list);
		System.err.println("================添加成功");
	}
}

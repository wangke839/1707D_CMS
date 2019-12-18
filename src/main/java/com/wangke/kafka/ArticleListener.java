package com.wangke.kafka;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.kafka.listener.MessageListener;

import com.alibaba.fastjson.JSON;
import com.wangke.bean.Article;
import com.wangke.mapper.ArticleMapper;

public class ArticleListener implements MessageListener<String, String>{

	@Autowired
	private ArticleMapper articleMapper;
	@SuppressWarnings("rawtypes")
	@Autowired
	private RedisTemplate redisTemplate;
	@SuppressWarnings("unchecked")
	@Override
	public void onMessage(ConsumerRecord<String, String> data) {
		// TODO Auto-generated method stub
		String jsonString = data.value();
		if(jsonString.startsWith("update")){
			System.err.println("进行修改操作");
			System.out.println(jsonString);
			redisTemplate.delete("host_article");
		}else if(jsonString.startsWith("add")){
			System.err.println("进行添加操作");
			System.out.println(jsonString);
			redisTemplate.delete("host_article");
		}else if(jsonString.startsWith("del")){
			System.err.println("进行删除操作");
			System.out.println(jsonString);
			redisTemplate.delete("host_article");
		}else{
		System.out.println("收到消息并处理");
		Article article = JSON.parseObject(jsonString, Article.class);
//		调用添加文章的方法
		articleMapper.addArticle(article);
		}
	}

}

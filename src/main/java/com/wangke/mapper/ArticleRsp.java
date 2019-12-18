package com.wangke.mapper;

import java.util.List;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

import com.wangke.bean.Article;

public interface ArticleRsp extends ElasticsearchRepository<Article, Integer>{
	List<Article> findByTitle(String key,String key2);
	
}

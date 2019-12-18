package com.wangke.mapper;

import java.util.List;

import com.wangke.bean.Article;

public interface IndexMapper {

	List showChannel();

	List getNewArticles(int i);

	List getHotArticle();

	List getImgArticle(int i);

	List<Article> getAllArticle();

}

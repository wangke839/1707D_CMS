package com.wangke.mapper;

import java.util.List;

public interface IndexMapper {

	List showChannel();

	List getNewArticles(int i);
//获取热点文章
	List getHotArticle();

}

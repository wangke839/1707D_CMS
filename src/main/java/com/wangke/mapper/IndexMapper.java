package com.wangke.mapper;

import java.util.List;

public interface IndexMapper {

	List showChannel();

	List getNewArticles(int i);

	List getHotArticle();

	List getImgArticle(int i);

}

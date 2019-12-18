package com.wangke.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

public interface IndexService {

	List showChannel();

	List getNewArticle(int i);

	PageInfo getHotArticle(Integer pageNum);

	List getImgArticle(int i);


	PageInfo findByTitle(Integer pageNum, String key);

}

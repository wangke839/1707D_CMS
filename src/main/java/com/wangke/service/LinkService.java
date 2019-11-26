package com.wangke.service;


import com.github.pagehelper.PageInfo;
import com.wangke.bean.Link;

public interface LinkService {

	PageInfo list(int pageNum);

	int add(Link link);

	int delLink(int id);

}

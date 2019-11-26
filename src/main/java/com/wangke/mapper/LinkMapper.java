package com.wangke.mapper;

import java.util.List;

import com.wangke.bean.Link;


public interface LinkMapper {

	List list();

	int add(Link link);

	int delLink(int id);

}

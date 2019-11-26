package com.wangke.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wangke.bean.Link;
import com.wangke.mapper.LinkMapper;
import com.wangke.service.LinkService;
@Service
public class LinkServiceImpl implements LinkService{

	@Autowired
	private LinkMapper linkMapper;
	@Override
	public PageInfo list(int pageNum) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum,4);
		return new PageInfo(linkMapper.list());
	}
	@Override
	public int add(Link link) {
		// TODO Auto-generated method stub
		return linkMapper.add(link);
	}
	@Override
	public int delLink(int id) {
		// TODO Auto-generated method stub
		return linkMapper.delLink(id);
	}

}

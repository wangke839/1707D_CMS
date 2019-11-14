package com.wangke.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wangke.comm.CONTAINT;
import com.wangke.mapper.IndexMapper;
import com.wangke.service.IndexService;

@Service
public class IndexServiceImpl implements IndexService{

	@Autowired
	private IndexMapper im;

	@Override
	public List showChannel() {
		// TODO Auto-generated method stub
		return im.showChannel();
	}

	@Override
	public List getNewArticle(int i) {
		// TODO Auto-generated method stub
		return im.getNewArticles(i);
	}

	@Override
	public PageInfo getHotArticle(Integer pageNum) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, CONTAINT.PAGE_SIZE);
		List list = im.getHotArticle();
		PageInfo info = new PageInfo(list);
		return info;
	}
	
}

package com.wangke.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangke.mapper.FavariteMapper;
import com.wangke.service.FavariteService;
@Service
public class FavariteServiceImpl implements FavariteService{

	@Autowired
	private FavariteMapper favariteMapper;
	@Override
	public int favarite(int articleId, Integer userId) {
		// TODO Auto-generated method stub
		return favariteMapper.favarite(articleId,userId);
	}
	@Override
	public List getCollection(Integer id) {
		// TODO Auto-generated method stub
		return favariteMapper.getCollection(id);
	}

}

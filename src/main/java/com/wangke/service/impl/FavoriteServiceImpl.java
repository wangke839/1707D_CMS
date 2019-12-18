package com.wangke.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangke.mapper.FavariteMapper;
import com.wangke.service.FavoriteServicel;
@Service
public class FavoriteServiceImpl implements FavoriteServicel{

	@Autowired
	private FavariteMapper fvariteMapper;

	@Override
	public List myCollection(Integer id) {
		// TODO Auto-generated method stub
		return fvariteMapper.myCollection(id);
	}

	@Override
	public int favorite(int id, Integer userId, String url) {
		// TODO Auto-generated method stub
		return fvariteMapper.favorite(id,userId,url);
	}

	@Override
	public int delColle(int id) {
		// TODO Auto-generated method stub
		return fvariteMapper.delColle(id);
	}
	
}
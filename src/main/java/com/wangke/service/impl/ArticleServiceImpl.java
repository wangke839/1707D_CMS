package com.wangke.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangke.bean.Article;
import com.wangke.mapper.ArticleMapper;
import com.wangke.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService{

	@Autowired
	private ArticleMapper aticleMapper;

	@Override
	public List getById(Integer id) {
		// TODO Auto-generated method stub
		return aticleMapper.getById(id);
	}
}

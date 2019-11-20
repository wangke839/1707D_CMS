package com.wangke.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wangke.bean.Article;
import com.wangke.comm.CONTAINT;
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

	@Override
	public PageInfo listByCat(int chnId, int categoryId, int pageNum) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, CONTAINT.PAGE_SIZE);
		return new PageInfo<Article>(aticleMapper.listByCat(chnId,categoryId));
	}

	@Override
	public PageInfo getPageList(int status, Integer page) {
		// TODO Auto-generated method stub
		PageHelper.startPage(page, 8);
		
		 return new PageInfo(aticleMapper.listByStatus(status));
	}

	@Override
	public Article getDetailById(int id) {
		// TODO Auto-generated method stub
		return aticleMapper.getDetailById(id);
	}
}

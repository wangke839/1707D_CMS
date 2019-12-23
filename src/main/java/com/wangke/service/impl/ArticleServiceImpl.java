package com.wangke.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
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
	public Article getById(Integer id) {
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

	@Override
	public Article checkExist(int id) {
		// TODO Auto-generated method stub
		return aticleMapper.checkExist(id);
	}

	@Override
	public int apply(@Param("id")int id, @Param("status")int status) {
		// TODO Auto-generated method stub
		return aticleMapper.apply(id,status);
	}

	@Override
	public int setHot(int id, int status) {
		// TODO Auto-generated method stub
		return aticleMapper.setHot(id,status);
	}

	@Override
	public int delArticle(int id) {
		// TODO Auto-generated method stub
		return aticleMapper.delArticle(id);
	}

	@Override
	public PageInfo<Article> listByUser(int page, Integer id) {
		// TODO Auto-generated method stub
		PageHelper.startPage(page, 6);
		return new PageInfo<Article>(aticleMapper.listByUser(id));
	}

	@Override
	public int addArticle(Article article) {
		// TODO Auto-generated method stub
		return aticleMapper.addArticle(article);
	}

	@Override
	public int updateArticle(Article article) {
		// TODO Auto-generated method stub
		return aticleMapper.updateArticle(article);
	}

	@Override
	public Article getById2(int id) {
		// TODO Auto-generated method stub
		return aticleMapper.getById2(id);
	}

	@Override
	public void updateHits(Article article) {
		// TODO Auto-generated method stub
		aticleMapper.updateHits(article);
	}

}

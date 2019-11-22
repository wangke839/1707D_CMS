package com.wangke.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.wangke.bean.Article;

public interface ArticleService {

	List getById(Integer id);

	PageInfo listByCat(int chnId, int categoryId, int pageNum);

	PageInfo getPageList(int status, Integer page);

	Article getDetailById(int id);

	Article checkExist(int id);

	int apply(int id, int status);

	int setHot(int id, int status);

	int delArticle(int id);

	PageInfo<Article> listByUser(int page, Integer id);

	int addArticle(Article article);

	int updateArticle(Article article);

	Article getById2(int id);

}

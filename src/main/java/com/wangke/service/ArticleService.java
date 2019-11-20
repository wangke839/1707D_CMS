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

}

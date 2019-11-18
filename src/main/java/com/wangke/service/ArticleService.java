package com.wangke.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.wangke.bean.Article;

public interface ArticleService {

	List getById(Integer id);

	PageInfo listByCat(int chnId, int categoryId, int pageNum);

}

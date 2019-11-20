package com.wangke.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wangke.bean.Article;


public interface ArticleMapper {

	List getById(Integer id);

	List<Article> listByCat(@Param("chnId")int chnId, @Param("categoryId")int categoryId);
	
	List listByStatus(@Param("status")int status);

	Article getDetailById(int id);

}

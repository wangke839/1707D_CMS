package com.wangke.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wangke.bean.Article;


public interface ArticleMapper {

	Article getById(Integer id);

	List<Article> listByCat(@Param("chnId")int chnId, @Param("categoryId")int categoryId);
	
	List listByStatus(@Param("status")int status);

	Article getDetailById(int id);

	Article checkExist(int id);

	int apply(@Param("id")int id,@Param("status") int status);

	int setHot(@Param("id")int id,@Param("status") int status);

	int delArticle(int id);

	List<Article> listByUser(Integer id);

	int addArticle(Article article);

	int updateArticle(Article article);

	Article getById2(int id);

}

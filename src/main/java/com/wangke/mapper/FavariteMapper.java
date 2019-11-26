package com.wangke.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface FavariteMapper {

	int favarite(@Param("articleId")int articleId, @Param("userId")Integer userId);

	List getCollection(Integer id);

}

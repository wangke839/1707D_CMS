package com.wangke.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface FavariteMapper {

//	展示当前用户的收藏记录
	List myCollection(Integer id);
//	收藏功能
	int favorite(@Param("id")int id, @Param("userId")Integer userId, @Param("url")String url);
//	根据id删除收藏记录
	int delColle(int id);

}

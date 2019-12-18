package com.wangke.service;

import java.util.List;

public interface FavoriteServicel {
//	展示当前用户的收藏记录
	List myCollection(Integer id);
//收藏文章
	int favorite(int id, Integer userId, String url);
//根据id删除收藏记录
	int delColle(int id);

}

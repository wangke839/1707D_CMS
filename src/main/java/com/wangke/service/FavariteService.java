package com.wangke.service;

import java.util.List;

public interface FavariteService {

	int favarite(int articleId, Integer userId);

	List getCollection(Integer id);

}

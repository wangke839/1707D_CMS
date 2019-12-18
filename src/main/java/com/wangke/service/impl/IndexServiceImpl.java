package com.wangke.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.data.elasticsearch.core.aggregation.AggregatedPage;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wangke.bean.Article;
import com.wangke.comm.CONTAINT;
import com.wangke.comm.HLUtils;
import com.wangke.mapper.ArticleRsp;
import com.wangke.mapper.IndexMapper;
import com.wangke.service.IndexService;

@Service
public class IndexServiceImpl implements IndexService{

	@Autowired
	private IndexMapper im;
	@Autowired
	private RedisTemplate redisTemplate;
	@Autowired
	private ArticleRsp articleRsp;
	@Autowired
	private ElasticsearchTemplate elasticsearchTemplate;

	@SuppressWarnings("unchecked")
	@Override
	public List showChannel() {
		// TODO Auto-generated method stub
		List channel = redisTemplate.opsForList().range("channel", 0, -1);
		if(channel != null && channel.size() >0){
			System.err.println("从redis获取频道");
			return channel;
		}
		List showChannel = im.showChannel();
		 redisTemplate.opsForList().leftPushAll("channel", showChannel.toArray());
		 System.err.println("从Mysql获取频道");
		return showChannel;
	}

	@Override
	public List getNewArticle(int i) {
		// TODO Auto-generated method stub
		return im.getNewArticles(i);
	}

	@SuppressWarnings("unchecked")
	@Override
	public PageInfo getHotArticle(Integer pageNum) {
		// TODO Auto-generated method stub
//		PageHelper.startPage(pageNum, CONTAINT.PAGE_SIZE);
		List hot = redisTemplate.opsForList().range("host_article", 0, 9);
		if(hot != null && hot.size() > 0){
			PageInfo info = new PageInfo(hot);
			System.err.println("从redis中查询了热点文章....");
			return info;
		}
		List list = im.getHotArticle();
		redisTemplate.opsForList().leftPushAll("host_article",list.toArray());
		PageInfo info = new PageInfo(list);
		System.err.println("从mysql中查询了热点文章....");
		return info;
	}

	@Override
	public List getImgArticle(int i) {
		// TODO Auto-generated method stub
		return im.getImgArticle(i);
	}

	@Override
	public PageInfo findByTitle(Integer pageNum,String key) {
		// TODO Auto-generated method stub
//		List<Article> list = articleRsp.findByTitle(key,null);
		AggregatedPage<?> selectObjects = HLUtils.selectObjects(elasticsearchTemplate, Article.class, pageNum, 3, new String[]{"title"}, "id", key);
		List<Article> content = (List<Article>) selectObjects.getContent();
		System.out.println(content);
		PageInfo info = new PageInfo(content);
		info.setPageNum(pageNum);
		info.setPageSize(CONTAINT.PAGE_SIZE);
		int total = (int) selectObjects.getTotalElements();
		info.setTotal(total);
		int pages = total%CONTAINT.PAGE_SIZE==0?total/CONTAINT.PAGE_SIZE:total/CONTAINT.PAGE_SIZE+1;
		info.setPages(pages);
		if(pageNum-1 > 0){
			info.setPrePage(pageNum-1);
		}else {
			info.setPrePage(1);
		}
		if(pageNum+1 > pages){
			info.setNextPage(pages);
		}else {
			info.setNextPage(pageNum+1);
		}
		return info;
	}
	
}

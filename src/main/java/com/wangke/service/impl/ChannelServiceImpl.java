package com.wangke.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wangke.mapper.ChannelMapper;
import com.wangke.service.ChannelService;
@Service
public class ChannelServiceImpl implements ChannelService{

	@Autowired
	private ChannelMapper channelMapper;
	@Override
	public List showChannel() {
		// TODO Auto-generated method stub
		return channelMapper.showChannel() ;
	}

	
}

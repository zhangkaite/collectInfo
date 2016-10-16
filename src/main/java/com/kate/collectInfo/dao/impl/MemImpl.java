package com.kate.collectInfo.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.IMem;
import com.kate.collectInfo.dao.mapper.MemInfoMapper;
import com.kate.collectInfo.service.entity.MemInfo;

@Service
public class MemImpl implements IMem {

	@Autowired
	private MemInfoMapper memInfoMapper;

	@Override
	public Integer addMemInfo(MemInfo memInfo) throws Exception {

		return memInfoMapper.addInfoList(memInfo);
	}

}

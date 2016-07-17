package com.kate.collectInfo.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.INet;
import com.kate.collectInfo.dao.mapper.NetInfoMapper;
import com.kate.collectInfo.service.entity.NetInfo;

@Service
public class NetImpl implements INet {

	@Autowired
	private NetInfoMapper netInfoMapper;

	@Override
	public Integer addNetInfo(List<NetInfo> dataList) throws Exception {
		return netInfoMapper.addNetInfoList(dataList);
	}

}

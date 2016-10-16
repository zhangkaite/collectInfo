package com.kate.collectInfo.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.IDisk;
import com.kate.collectInfo.dao.mapper.DiskInfoMapper;
import com.kate.collectInfo.service.entity.DiskInfo;

@Service
public class DiskImpl implements IDisk {

	@Autowired
	private DiskInfoMapper diskInfoMapper;
	@Override
	public Integer addInfo(List<DiskInfo> ls) throws Exception {
		return diskInfoMapper.addInfoList(ls);
	}

}

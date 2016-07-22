package com.kate.collectInfo.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.ISysInfo;
import com.kate.collectInfo.dao.mapper.SysInfoMapper;
import com.kate.collectInfo.service.entity.SysInfo;

@Service
public class SysInfoImpl implements ISysInfo {

	@Autowired
	private SysInfoMapper sysInfoMapper;
	public Integer addSysInfo(SysInfo sysInfo) throws Exception {
		return sysInfoMapper.addSysInfo(sysInfo);
	}

}

package com.kate.collectInfo.dao.impl;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.ICpu;
import com.kate.collectInfo.dao.mapper.CpuInfoMapper;
import com.kate.collectInfo.service.entity.CpuInfo;
import com.kate.collectInfo.tools.JsonUtil;

@Service
public class CpuImpl implements ICpu {
	private Logger logger = LogManager.getLogger(CpuImpl.class);
	@Autowired
	private CpuInfoMapper cpuInfoMapper;

	@Override
	public Integer addCpuInfo(List<CpuInfo> ls) throws Exception {
		logger.info("cpu 向mysql存储的数据是:" + JsonUtil.getObjectToJson(ls));
		return cpuInfoMapper.addRichUserRankingData(ls);
	}

}

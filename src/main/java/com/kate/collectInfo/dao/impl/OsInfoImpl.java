package com.kate.collectInfo.dao.impl;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.IOsInfo;
import com.kate.collectInfo.dao.mapper.OsInfoMapper;
import com.kate.collectInfo.service.entity.OsInfo;
import com.kate.collectInfo.tools.JsonUtil;
@Service
public class OsInfoImpl implements IOsInfo {
	private Logger logger = LogManager.getLogger(this.getClass());
	private  OsInfoMapper osInfoMapper;
	@Override
	public Integer addInfo(List<OsInfo> ls) throws Exception {
		logger.info("OsInfoMapper 向mysql存储的数据是:" + JsonUtil.getObjectToJson(ls));
		return osInfoMapper.addInfoList(ls);
	}

}

package com.kate.collectInfo.dao.impl;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.IDiskDriver;
import com.kate.collectInfo.dao.mapper.DiskDriverMapper;
import com.kate.collectInfo.service.entity.DiskDriverInfo;
import com.kate.collectInfo.tools.JsonUtil;
@Service
public class DiskDriverImpl implements IDiskDriver {
	private Logger logger = LogManager.getLogger(this.getClass());
	@Autowired
	private DiskDriverMapper diskDriverMapper;
	@Override
	public Integer addInfo(List<DiskDriverInfo> ls) throws Exception {
		logger.info("diskdriver 向mysql存储的数据是:" + JsonUtil.getObjectToJson(ls));
		return diskDriverMapper.addInfoList(ls);
	}

}

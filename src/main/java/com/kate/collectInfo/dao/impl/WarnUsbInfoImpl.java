package com.kate.collectInfo.dao.impl;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.IUsbWarnInfo;
import com.kate.collectInfo.dao.mapper.WarnUsbInfoMapper;
import com.kate.collectInfo.service.entity.WarnUsbInfo;
import com.kate.collectInfo.tools.JsonUtil;
@Service
public class WarnUsbInfoImpl implements IUsbWarnInfo {
	private Logger logger = LogManager.getLogger(this.getClass());
	
	@Autowired
	private WarnUsbInfoMapper warnUsbInfoMapper;
	@Override
	public Integer addInfo(List<WarnUsbInfo> ls) throws Exception {
		logger.info("WarnUsbInfoImpl 向mysql存储的数据是:" + JsonUtil.getObjectToJson(ls));
		return warnUsbInfoMapper.addInfoList(ls);
	}

}

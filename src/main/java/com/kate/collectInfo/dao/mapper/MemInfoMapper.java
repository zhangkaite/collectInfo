package com.kate.collectInfo.dao.mapper;

import java.util.Date;

import org.springframework.stereotype.Service;

import com.kate.collectInfo.service.entity.MemInfo;

@Service
public class MemInfoMapper extends AbstractMapper<MemInfo> {

	public Integer addMemInfo(MemInfo memInfo) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.MenInfoMapper");
		MemInfo isExit = queryData(memInfo);
		Integer result = null;
		memInfo.setUpdateTime(new Date());
		if (null == isExit) {
			result = addData(memInfo);
		} else {
			memInfo.setId(isExit.getIp());
			result = updataData(memInfo);
		}
		return result;
	}

}

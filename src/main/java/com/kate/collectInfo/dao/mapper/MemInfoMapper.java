package com.kate.collectInfo.dao.mapper;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.MemInfo;

@Component
public class MemInfoMapper extends AbstractMapper<MemInfo> {

	public Integer addInfoList(MemInfo memInfo) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.MenInfoMapper");
		MemInfo isExit = queryData(memInfo);
		Integer result = null;
		memInfo.setUpdateTime(new Date());
		if (null == isExit) {
			result = addData(memInfo);
		} 
		return result;
	}

}

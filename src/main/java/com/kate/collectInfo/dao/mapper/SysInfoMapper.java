package com.kate.collectInfo.dao.mapper;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.SysInfo;

@Component
public class SysInfoMapper extends AbstractMapper<SysInfo> {

	public Integer addInfoList(SysInfo sysInfo) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.SysInfoMapper");
		SysInfo isExit = queryData(sysInfo);
		Integer result = null;
		sysInfo.setUpdateTime(new Date());
		if (null == isExit) {
			result = addData(sysInfo);
		} else {
			sysInfo.setId(isExit.getIp());
			result = updataData(sysInfo);
		}
		return result;
	}

}

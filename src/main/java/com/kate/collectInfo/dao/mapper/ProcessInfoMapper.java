package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.ProcessInfo;

@Component
public class ProcessInfoMapper extends AbstractMapper<ProcessInfo> {
	public Integer addInfoList(List<ProcessInfo> dataList) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.ProcessInfoMapper");
		for (ProcessInfo processInfo : dataList) {
			ProcessInfo isExit = queryData(processInfo);
			processInfo.setUpdateTime(new Date());
			if (null != isExit) {
				processInfo.setId(isExit.getId());
				updataData(processInfo);
			} else {
				addData(processInfo);
			}
		}
		return null;
	}

}

package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.PortInfo;

@Component
public class PortInfoMapper extends AbstractMapper<PortInfo> {
	public Integer addNetInfoList(List<PortInfo> dataList) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.PortInfoMapper");
		for (PortInfo portInfo : dataList) {
			PortInfo isExit = queryData(portInfo);
			portInfo.setUpdateTime(new Date());
			if (null != isExit) {
				portInfo.setId(isExit.getId());
				updataData(portInfo);
			} else {
				addData(portInfo);
			}
		}
		return null;
	}

}

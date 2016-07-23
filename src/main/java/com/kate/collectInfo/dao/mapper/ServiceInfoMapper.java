package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.ServiceInfo;

@Component
public class ServiceInfoMapper extends AbstractMapper<ServiceInfo> {
	public Integer addInfoList(List<ServiceInfo> dataList) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.ServiceInfoMapper");
		for (ServiceInfo serviceInfo : dataList) {
			ServiceInfo isExit = queryData(serviceInfo);
			serviceInfo.setUpdateTime(new Date());
			if (null != isExit) {
				serviceInfo.setId(isExit.getId());
				updataData(serviceInfo);
			} else {
				addData(serviceInfo);
			}
		}
		return null;
	}

}

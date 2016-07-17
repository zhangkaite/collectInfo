package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.NetInfo;

@Component
public class NetInfoMapper extends AbstractMapper<NetInfo> {
	public Integer addNetInfoList(List<NetInfo> dataList) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.NetInfoMapper");
		for (NetInfo netInfo : dataList) {
			NetInfo isExit = queryData(netInfo);
			netInfo.setUpdateTime(new Date());
			if (null != isExit) {
				netInfo.setId(isExit.getId());
				updataData(netInfo);
			} else {
				addData(netInfo);
			}
		}
		return null;
	}

}
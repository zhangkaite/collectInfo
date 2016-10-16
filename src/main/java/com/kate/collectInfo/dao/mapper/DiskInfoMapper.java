package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.DiskInfo;

@Component
public class DiskInfoMapper extends AbstractMapper<DiskInfo> {
	public Integer addInfoList(List<DiskInfo> dataList) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.DiskInfoMapper");
		for (DiskInfo diskInfo : dataList) {
			DiskInfo isExit = queryData(diskInfo);
			diskInfo.setUpdateTime(new Date());
			if (null != isExit) {
				diskInfo.setId(isExit.getId());
				updataData(diskInfo);
			} else {
				addData(diskInfo);
			}
		}
		return null;
	}

}

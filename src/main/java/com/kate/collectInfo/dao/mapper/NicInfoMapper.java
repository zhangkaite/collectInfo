package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.NicInfo;

@Component
public class NicInfoMapper extends AbstractMapper<NicInfo> {
	public Integer addInfoList(List<NicInfo> dataList) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.NicInfoMapper");
		for (NicInfo nicInfo : dataList) {
			NicInfo isExit = queryData(nicInfo);
			nicInfo.setUpdateTime(new Date());
			if (null == isExit) {
				addData(nicInfo);
			}
		}
		return null;
	}

}

package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.BiosInfo;

@Component
public class BiosInfoMapper extends AbstractMapper<BiosInfo> {
	public Integer addInfoList(List<BiosInfo> dataList) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.BiosInfoMapper");
		for (BiosInfo biosInfo : dataList) {
			BiosInfo isExit = queryData(biosInfo);
			biosInfo.setUpdateTime(new Date());
			if (null == isExit){
				addData(biosInfo);
			}
		}
		return null;
	}

}

package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.BiosInfo;

@Component
public class BiosInfoMapper extends AbstractMapper<BiosInfo> {
	public Integer addNetInfoList(List<BiosInfo> dataList) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.BiosInfoMapper");
		for (BiosInfo biosInfo : dataList) {
			BiosInfo isExit = queryData(biosInfo);
			biosInfo.setUpdateTime(new Date());
			if (null != isExit) {
				biosInfo.setId(isExit.getId());
				updataData(biosInfo);
			} else {
				addData(biosInfo);
			}
		}
		return null;
	}

}

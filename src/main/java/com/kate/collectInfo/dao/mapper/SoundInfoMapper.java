package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.SoundInfo;

@Component
public class SoundInfoMapper extends AbstractMapper<SoundInfo> {
	public Integer addInfoList(List<SoundInfo> dataList) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.SoundInfoMapper");
		for (SoundInfo Info : dataList) {
			SoundInfo isExit = queryData(Info);
			Info.setUpdateTime(new Date());
			if (null != isExit) {
				Info.setId(isExit.getId());
				updataData(Info);
			} else {
				addData(Info);
			}
		}
		return null;
	}

}

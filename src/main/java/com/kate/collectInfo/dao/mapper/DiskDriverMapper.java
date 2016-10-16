package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.DiskDriverInfo;
@Component
public class DiskDriverMapper extends AbstractMapper<DiskDriverInfo>{
	public Integer addInfoList(List<DiskDriverInfo> list) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.DiskDriverMapper");
		try {
			for (DiskDriverInfo diskDriverInfo : list) {
				DiskDriverInfo isExit = queryData(diskDriverInfo);
				if (null != isExit) {
					diskDriverInfo.setId(isExit.getId());
					diskDriverInfo.setUpdateTime(new Date());
					updataData(diskDriverInfo);
				} else {
					diskDriverInfo.setUpdateTime(new Date());
					addData(diskDriverInfo);
				}

			}

		} catch (Exception e) {
			throw e;

		}
		return null;
	}
	

}

package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.OsInfo;
@Component
public class OsInfoMapper extends AbstractMapper<OsInfo>{
	public Integer addInfoList(List<OsInfo> list) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.OsInfoMapper");
		try {
			for (OsInfo osinfo : list) {
				OsInfo isExit = queryData(osinfo);
				if (null != isExit) {
					osinfo.setId(isExit.getId());
					osinfo.setUpdateTime(new Date());
					updataData(osinfo);
				} else {
					osinfo.setUpdateTime(new Date());
					addData(osinfo);
					//添加预警  
				}

			}

		} catch (Exception e) {
			throw e;

		}
		return null;
	}
	

}

package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.WarnUsbInfo;
@Component
public class WarnUsbInfoMapper extends AbstractMapper<WarnUsbInfo>{
	public Integer addInfoList(List<WarnUsbInfo> list) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.WarnUsbInfoMapper");
		try {
			for (WarnUsbInfo warnUsbInfo : list) {
				WarnUsbInfo isExit = queryData(warnUsbInfo);
				if (null != isExit) {
					warnUsbInfo.setId(isExit.getId());
					warnUsbInfo.setUpdateTime(new Date());
					updataData(warnUsbInfo);
				} else {
					warnUsbInfo.setUpdateTime(new Date());
					addData(warnUsbInfo);
					
				}

			}

		} catch (Exception e) {
			throw e;

		}
		return null;
	}
	

}

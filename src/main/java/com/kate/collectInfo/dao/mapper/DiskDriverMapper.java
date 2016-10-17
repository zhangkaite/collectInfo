package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.DiskDriverInfo;
import com.kate.collectInfo.service.entity.WarnUsbInfo;
@Component
@SuppressWarnings({ "unchecked", "rawtypes" })
public class DiskDriverMapper extends AbstractMapper<DiskDriverInfo>{
	@Autowired
	private UsbFilterMapper usbFilterMapper;
	
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
					Map dataMap=new HashMap();
					dataMap.put("serialNumber", diskDriverInfo.getSerialNumber());
					int number=usbFilterMapper.isDataExit(dataMap);
					//如果在预警配置中查询不到，则预警
					if (number==0) {
						WarnUsbInfo warnUsbInfo=new WarnUsbInfo();
						warnUsbInfo.setIp(diskDriverInfo.getIp());
						warnUsbInfo.setMac(diskDriverInfo.getMac());
						warnUsbInfo.setMediaType(diskDriverInfo.getMediaType());
						warnUsbInfo.setModel(diskDriverInfo.getModel());
						warnUsbInfo.setSerialNumber(diskDriverInfo.getSerialNumber());
						warnUsbInfo.setSignature(diskDriverInfo.getSignature());
						warnUsbInfo.setStatus("0");
						warnUsbInfo.setUpdateTime(new Date());
						usbFilterMapper.addData(warnUsbInfo);
					}
					
					
				}

			}

		} catch (Exception e) {
			throw e;

		}
		return null;
	}
	

}

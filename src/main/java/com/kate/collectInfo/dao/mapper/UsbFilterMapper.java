package com.kate.collectInfo.dao.mapper;

import java.util.Map;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.UsbFilterInfo;

@Component
public class UsbFilterMapper extends AbstractMapper<UsbFilterInfo> {

	@SuppressWarnings("rawtypes")
	public Integer isDataExit(Map resultMap) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.UsbFilterMapper");
		String serialNumber = resultMap.get("serialNumber").toString();
		UsbFilterInfo usbFilterInfo = new UsbFilterInfo();
		usbFilterInfo.setSerialNumber(serialNumber);
		UsbFilterInfo isExit = queryData(usbFilterInfo);
		if (null != isExit) {
			return 1;
		}

		return 0;
	}

}

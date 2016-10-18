package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.DiskDriverInfo;
import com.kate.collectInfo.service.entity.OsInfo;
import com.kate.collectInfo.service.entity.WarnComputerInfo;
import com.kate.collectInfo.service.entity.WarnUsbInfo;

@Component
@SuppressWarnings({ "unchecked", "rawtypes" })
public class DiskDriverMapper extends AbstractMapper<DiskDriverInfo> {
	@Autowired
	private UsbFilterMapper usbFilterMapper;
	@Autowired
	private WarnUsbInfoMapper warnUsbInfoMapper;
	@Autowired
	private OsInfoMapper osInfoMapper;
	@Autowired
	private WarnCompInfoMapper warnCompInfoMapper;
	

	public Integer addInfoList(List<DiskDriverInfo> list) throws Exception {
		setMapperPack("com.kate.collectInfo.dao.mapper.DiskDriverMapper");
		try {
			for (DiskDriverInfo diskDriverInfo : list) {
				DiskDriverInfo isExit = queryData(diskDriverInfo);
				// 如果有查询的数据不存在，则说明数据为新增或者修改
				// 如果为新增，查询u盘过滤配置中是否存在该序列号，不存在则预警
				if (null == isExit) {
					diskDriverInfo.setUpdateTime(new Date());
					addData(diskDriverInfo);
					Map dataMap = new HashMap();
					dataMap.put("serialNumber", diskDriverInfo.getSerialNumber());
					int number = usbFilterMapper.isDataExit(dataMap);
					// 如果在预警配置中查询不到，则预警
					if (number == 0) {
						WarnUsbInfo warnUsbInfo = new WarnUsbInfo();
						warnUsbInfo.setIp(diskDriverInfo.getIp());
						warnUsbInfo.setMac(diskDriverInfo.getMac());
						warnUsbInfo.setMediaType(diskDriverInfo.getMediaType());
						warnUsbInfo.setModel(diskDriverInfo.getModel());
						warnUsbInfo.setSerialNumber(diskDriverInfo.getSerialNumber());
						warnUsbInfo.setSignature(diskDriverInfo.getSignature());
						warnUsbInfo.setStatus("0");
						warnUsbInfo.setUpdateTime(new Date());
						warnUsbInfoMapper.addData(warnUsbInfo);
					}
					
					//预警修改
					DiskDriverInfo isHostExit = queryData(diskDriverInfo,"selectByIpMac");
					OsInfo osinfo=new OsInfo();
					osinfo.setIp(diskDriverInfo.getIp());
					osinfo.setMac(diskDriverInfo.getMac());
					OsInfo osData=osInfoMapper.queryData(osinfo);
					if (null==isHostExit) {
						//预警新增
						WarnComputerInfo warnComputerInfo=new WarnComputerInfo();
						warnComputerInfo.setIp(diskDriverInfo.getIp());
						warnComputerInfo.setMac(diskDriverInfo.getMac());
						warnComputerInfo.setSerialNumber(diskDriverInfo.getSerialNumber());
						warnComputerInfo.setOs(osData.getCaption());
						warnComputerInfo.setStatus("新增");
						warnComputerInfo.setUpdateTime(new Date());
						warnCompInfoMapper.addData(warnComputerInfo);
					}else{
						//预警磁盘序列号发生改变
						
					}
				}

			}

		} catch (Exception e) {
			throw e;

		}
		return null;
	}

}

package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.DiskDriverInfo;
import com.kate.collectInfo.service.entity.OsInfo;
import com.kate.collectInfo.service.entity.WarnComputerInfo;

@Component
public class OsInfoMapper extends AbstractMapper<OsInfo> {
	@Autowired
	private WarnCompInfoMapper warnCompInfoMapper;
	@Autowired
	private DiskDriverMapper diskDriverMapper;

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
					DiskDriverInfo entity = new DiskDriverInfo();
					entity.setIp(osinfo.getIp());
					entity.setMac(osinfo.getMac());
					DiskDriverInfo diskDriverInfo = diskDriverMapper.queryData(entity);
					// 添加操作系统预警
					WarnComputerInfo warnComputerInfo = new WarnComputerInfo();
					warnComputerInfo.setIp(osinfo.getIp());
					warnComputerInfo.setMac(osinfo.getMac());
					warnComputerInfo.setSerialNumber(diskDriverInfo.getSerialNumber());
					warnComputerInfo.setOs(osinfo.getCaption());
					warnComputerInfo.setStatus("变更");
					warnComputerInfo.setUpdateTime(new Date());
					warnComputerInfo.setChangeField("os");
					warnCompInfoMapper.setMapperPack("com.kate.collectInfo.dao.mapper.WarnCompInfoMapper");
					warnCompInfoMapper.addData(warnComputerInfo);
				}

			}

		} catch (Exception e) {
			throw e;

		}
		return null;
	}

}

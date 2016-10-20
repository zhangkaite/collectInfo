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
				//根据ip、mac、操作系统版本号查询数据，如果不存在则说明新增或者变更
				if (null == isExit) {
					DiskDriverInfo entity = new DiskDriverInfo();
					entity.setIp(osinfo.getIp());
					entity.setMac(osinfo.getMac());
					DiskDriverInfo diskDriverInfo = diskDriverMapper.queryData(entity);
					//根据ip、mac查询现有的系统数据是否存在
					OsInfo ipMacExit=queryData(osinfo, "selectIpMac");
					if (null!=ipMacExit) {
						// 添加操作系统预警
						WarnComputerInfo warnComputerInfo = new WarnComputerInfo();
						warnComputerInfo.setIp(osinfo.getIp());
						warnComputerInfo.setMac(osinfo.getMac());
						warnComputerInfo.setSerialNumber(diskDriverInfo.getSerialNumber());
						warnComputerInfo.setOs(osinfo.getVersion());
						warnComputerInfo.setStatus("变更");
						warnComputerInfo.setUpdateTime(new Date());
						warnComputerInfo.setChangeField("操作系统版本号");
						warnCompInfoMapper.setMapperPack("com.kate.collectInfo.dao.mapper.WarnCompInfoMapper");
						warnCompInfoMapper.addData(warnComputerInfo);
					}
					
					OsInfo ipVersionExit=queryData(osinfo, "selectIpVersion");
					if (null!=ipVersionExit) {
						WarnComputerInfo warnComputerInfo = new WarnComputerInfo();
						warnComputerInfo.setIp(osinfo.getIp());
						warnComputerInfo.setMac(osinfo.getMac());
						warnComputerInfo.setSerialNumber(diskDriverInfo.getSerialNumber());
						warnComputerInfo.setOs(osinfo.getVersion());
						warnComputerInfo.setStatus("变更");
						warnComputerInfo.setUpdateTime(new Date());
						warnComputerInfo.setChangeField("MAC");
						warnCompInfoMapper.setMapperPack("com.kate.collectInfo.dao.mapper.WarnCompInfoMapper");
						warnCompInfoMapper.addData(warnComputerInfo);
					}
					OsInfo macVersionExit=queryData(osinfo, "selectMacVersion");
					if (null!=macVersionExit) {
						WarnComputerInfo warnComputerInfo = new WarnComputerInfo();
						warnComputerInfo.setIp(osinfo.getIp());
						warnComputerInfo.setMac(osinfo.getMac());
						warnComputerInfo.setSerialNumber(diskDriverInfo.getSerialNumber());
						warnComputerInfo.setOs(osinfo.getVersion());
						warnComputerInfo.setStatus("变更");
						warnComputerInfo.setUpdateTime(new Date());
						warnComputerInfo.setChangeField("IP");
						warnCompInfoMapper.setMapperPack("com.kate.collectInfo.dao.mapper.WarnCompInfoMapper");
						warnCompInfoMapper.addData(warnComputerInfo);
					}
					osinfo.setUpdateTime(new Date());
					addData(osinfo);
					
				}

			}

		} catch (Exception e) {
			throw e;

		}
		return null;
	}

}

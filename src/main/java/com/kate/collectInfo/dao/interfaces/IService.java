package com.kate.collectInfo.dao.interfaces;

import java.util.List;

import com.kate.collectInfo.service.entity.BiosInfo;
import com.kate.collectInfo.service.entity.DiskDriverInfo;
import com.kate.collectInfo.service.entity.NicInfo;
import com.kate.collectInfo.service.entity.OsInfo;
import com.kate.collectInfo.service.entity.PortInfo;
import com.kate.collectInfo.service.entity.ProcessInfo;
import com.kate.collectInfo.service.entity.ServiceInfo;
import com.kate.collectInfo.service.entity.SoundInfo;

public interface IService {

	public Integer addNicInfo(List<NicInfo> netInfo) throws Exception;

	public Integer addProcessInfoList(List<ProcessInfo> processInfo) throws Exception;

	public Integer addServiceInfo(List<ServiceInfo> serviceInfo) throws Exception;

	public Integer addSoundListInfo(List<SoundInfo> soundInfo) throws Exception;

	public Integer addBiosInfo(List<BiosInfo> netInfo) throws Exception;
	
	public Integer addPortInfo(List<PortInfo> portInfoList) throws Exception;
	
	public Integer addDiskDriverInfo(List<DiskDriverInfo> ls)throws Exception;
	
	public Integer addOsinfo(List<OsInfo> ls)throws Exception;

}

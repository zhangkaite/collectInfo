package com.kate.collectInfo.work.task;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.INet;
import com.kate.collectInfo.dao.interfaces.IService;
import com.kate.collectInfo.service.entity.BiosInfo;
import com.kate.collectInfo.service.entity.DiskDriverInfo;
import com.kate.collectInfo.service.entity.NetInfo;
import com.kate.collectInfo.service.entity.NicInfo;
import com.kate.collectInfo.service.entity.OsInfo;
import com.kate.collectInfo.service.entity.PortInfo;
import com.kate.collectInfo.service.entity.ProcessInfo;
import com.kate.collectInfo.service.entity.ServiceInfo;
import com.kate.collectInfo.service.entity.SoundInfo;
import com.kate.collectInfo.tools.JsonUtil;
import com.kate.collectInfo.work.service.SigarService;
import com.kate.collectInfo.work.service.WmicService;

@Service
public class CollectNetInfoServiceTask {
	public static final Logger logger = LogManager.getLogger(CollectNetInfoServiceTask.class);
	@Autowired
	private INet netImpl;
	@Autowired
	private IService serviceImpl;

	public void addNetInfo() {
		try {
			List<NetInfo> list = SigarService.getNetInfos();
			logger.info("网卡采集到的信息:" + JsonUtil.getObjectToJson(list));
			netImpl.addNetInfo(list);
		} catch (Exception e) {
			logger.error("获取网卡信息持久化到mysql失败，失败的原因是:", e);
		}
	}

	public void addNicInfo() {
		try {
			List<NicInfo> list = WmicService.getNicInfoList();
			logger.info("网卡采集到的信息:" + JsonUtil.getObjectToJson(list));
			serviceImpl.addNicInfo(list);
		} catch (Exception e) {
			logger.error("获取网卡信息持久化到mysql失败，失败的原因是:", e);
		}

	}

	public void addProcessInfoList() {
		try {
			List<ProcessInfo> list = WmicService.getProcessInfoList();
			logger.info("进程采集到的信息:" + JsonUtil.getObjectToJson(list));
			serviceImpl.addProcessInfoList(list);
		} catch (Exception e) {
			logger.error("获取进程信息持久化到mysql失败，失败的原因是:", e);
		}

	}

	public void addServiceInfo() {
		try {
			List<ServiceInfo> list = WmicService.getServiceInfoList();
			logger.info("运行的服务采集到的信息:" + JsonUtil.getObjectToJson(list));
			serviceImpl.addServiceInfo(list);
		} catch (Exception e) {
			logger.error("获取运行的服务信息持久化到mysql失败，失败的原因是:", e);
		}

	}

	// SoundList

	public void addSoundListInfo() {
		try {
			List<SoundInfo> list = WmicService.getSoundList();
			logger.info("音频采集到的信息:" + JsonUtil.getObjectToJson(list));
			serviceImpl.addSoundListInfo(list);
		} catch (Exception e) {
			logger.error("获取音频信息持久化到mysql失败，失败的原因是:", e);
		}

	}
	//BiosInfo
	
	public void addBiosInfo() {
		try {
			List<BiosInfo> list = WmicService.getBiosInfo();
			logger.info("BIOS采集到的信息:" + JsonUtil.getObjectToJson(list));
			serviceImpl.addBiosInfo(list);
		} catch (Exception e) {
			logger.error("获取BIOS信息持久化到mysql失败，失败的原因是:", e);
		}

	}
	//portInfo
	
	public void addportInfo() {
		try {
			List<PortInfo> list = WmicService.getPortInfoList();
			logger.info("port采集到的信息:" + JsonUtil.getObjectToJson(list));
			serviceImpl.addPortInfo(list);
		} catch (Exception e) {
			logger.error("获取port信息持久化到mysql失败，失败的原因是:", e);
		}

	}
	
	//DiskDriverInfo
	public void addDiskDriverInfo() {
		try {
			List<DiskDriverInfo> list = WmicService.getDiskDriverInfoList();
			logger.info("DiskDriverInfo采集到的信息:" + JsonUtil.getObjectToJson(list));
		    serviceImpl.addDiskDriverInfo(list);
		} catch (Exception e) {
			logger.error("获取DiskDriverInfo信息持久化到mysql失败，失败的原因是:", e);
		}

	}
	
	
	//OsInfo
		public void addOsInfo() {
			try {
				List<OsInfo> list = WmicService.getOsInfoList();
				logger.info("OsInfo采集到的信息:" + JsonUtil.getObjectToJson(list));
			    serviceImpl.addOsinfo(list);
			} catch (Exception e) {
				logger.error("获取DiskDriverInfo信息持久化到mysql失败，失败的原因是:", e);
			}

		}

}

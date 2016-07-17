package com.kate.collectInfo.work.task;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.ISysInfo;
import com.kate.collectInfo.service.entity.SysInfo;
import com.kate.collectInfo.tools.JsonUtil;
import com.kate.collectInfo.work.service.SigarService;
@Service
public class CollectOperInfoServiceTask {
	public static final Logger logger = LogManager.getLogger();
	@Autowired
	private ISysInfo sysInfoImpl;
	public void addInfo(){
		SysInfo sysInfo=SigarService.getOsInfos();
		try {
			logger.info("获取的系统数据:"+JsonUtil.getObjectToJson(sysInfo));
			sysInfoImpl.addSysInfo(sysInfo);
		} catch (Exception e) {
			logger.error("获取操作系统信息，数据持久化mysql失败,失败的原因是:",e);
		}
		
	}

}

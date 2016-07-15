package com.kate.collectInfo.work.task;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.IMem;
import com.kate.collectInfo.service.entity.MemInfo;
import com.kate.collectInfo.tools.JsonUtil;
import com.kate.collectInfo.work.service.SigarService;

@Service
public class CollectMemInfoServiceTask {
	public static final Logger logger = LogManager.getLogger(CollectMemInfoServiceTask.class);
	@Autowired
	private IMem MemImpl;
	public void addMemInfo() {
		
		try {
			MemInfo memInfo=SigarService.getMemoryInfos();
			logger.info("内存采集到的信息:"+JsonUtil.getObjectToJson(memInfo));
			MemImpl.addMemInfo(memInfo);
		} catch (Exception e) {
			logger.error("获取内存持久化到mysql失败，失败的原因是:",e);
		}
		
	}

}

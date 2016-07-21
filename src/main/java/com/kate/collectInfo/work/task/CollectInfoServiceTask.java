package com.kate.collectInfo.work.task;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.INet;
import com.kate.collectInfo.service.entity.NetInfo;
import com.kate.collectInfo.tools.JsonUtil;
import com.kate.collectInfo.work.service.SigarService;

@Service
public class CollectInfoServiceTask {
	public static final Logger logger = LogManager.getLogger(CollectInfoServiceTask.class);
	@Autowired
	private INet netImpl;
	public void addInfo() {
		try {
			List<NetInfo> list=SigarService.getNetInfos();
			logger.info("网络采集到的信息:"+JsonUtil.getObjectToJson(list));
			netImpl.addNetInfo(list);
		} catch (Exception e) {
			logger.error("获取网络信息持久化到mysql失败，失败的原因是:",e);
		}
		
	}

}

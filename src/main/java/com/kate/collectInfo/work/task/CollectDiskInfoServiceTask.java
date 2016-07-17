package com.kate.collectInfo.work.task;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.IDisk;
import com.kate.collectInfo.service.entity.DiskInfo;
import com.kate.collectInfo.tools.JsonUtil;
import com.kate.collectInfo.work.service.SigarService;

@Service
public class CollectDiskInfoServiceTask {

	public static final Logger logger = LogManager.getLogger(CollectDiskInfoServiceTask.class);
	@Autowired
	private IDisk diskImpl;

	public void addList() {
		try {
			List<DiskInfo> diskList = SigarService.getFileInfos();
			logger.info("磁盘采集到的数据是:" + JsonUtil.getObjectToJson(diskList));
			diskImpl.addInfo(diskList);
		} catch (Exception e) {
			logger.error("磁盘采集的信息持久化磁盘失败，失败的原因是:", e);
		}

	}

}

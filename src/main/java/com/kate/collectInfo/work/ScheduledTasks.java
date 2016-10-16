package com.kate.collectInfo.work;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.kate.collectInfo.work.task.CollectCpuInfoServiceTask;
import com.kate.collectInfo.work.task.CollectDiskInfoServiceTask;
import com.kate.collectInfo.work.task.CollectMemInfoServiceTask;
import com.kate.collectInfo.work.task.CollectNetInfoServiceTask;
import com.kate.collectInfo.work.task.CollectOperInfoServiceTask;

@Component
public class ScheduledTasks {
	public static final Logger logger = LogManager.getLogger(ScheduledTasks.class);
	@Autowired
	private CollectCpuInfoServiceTask collectCpuInfoServiceTask;
   @Autowired
	private CollectMemInfoServiceTask collectMemInfoServiceTask;
   @Autowired
   private CollectOperInfoServiceTask collectOperInfoServiceTask;
   @Autowired
   private CollectDiskInfoServiceTask collectDiskInfoServiceTask;
   @Autowired
   private CollectNetInfoServiceTask collectNetInfoServiceTask;
 
	@Scheduled(cron = "0 */10 * * * *")
	public void sendHttpWinInfo() {
		try {
			collectCpuInfoServiceTask.addCpuInfo();
			collectMemInfoServiceTask.addMemInfo();
			collectOperInfoServiceTask.addInfo();
			collectDiskInfoServiceTask.addList();
			collectNetInfoServiceTask.addNetInfo();
			collectNetInfoServiceTask.addNicInfo();
			collectNetInfoServiceTask.addBiosInfo();
			collectNetInfoServiceTask.addSoundListInfo();
			collectNetInfoServiceTask.addServiceInfo();
			collectNetInfoServiceTask.addProcessInfoList();
			collectNetInfoServiceTask.addportInfo();
		} catch (Exception e) {
			logger.error("collectWinInfoTask work调用失败，失败的原因是:", e);
		}
	}
	
	@Scheduled(cron = "0 */1 * * * *")
	public void sendPortInfo() {
		try {
			collectNetInfoServiceTask.addDiskDriverInfo();
			collectNetInfoServiceTask.addOsInfo();
			//采集预警
			
			
		} catch (Exception e) {
			logger.error("collectWinInfoTask work调用失败，失败的原因是:", e);
		}
	}
	
	
	
	
	
	
	
	
}

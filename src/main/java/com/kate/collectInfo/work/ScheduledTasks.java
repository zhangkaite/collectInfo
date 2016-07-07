package com.kate.collectInfo.work;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.kate.collectInfo.work.task.CollectWinInfoTask;

@Component
public class ScheduledTasks {
	public static final Logger logger = LogManager.getLogger(ScheduledTasks.class);
	@Autowired
	private CollectWinInfoTask collectWinInfoTask;

	@Scheduled(cron = "*/5 * * * * *")
	public void sendHttpWinInfo() {
		try {
			// collectWinInfoTask.excute(null);
			// System.out.println("work调度成功");
		} catch (Exception e) {
			logger.error("collectWinInfoTask work调用失败，失败的原因是:", e);
		}
	}
}

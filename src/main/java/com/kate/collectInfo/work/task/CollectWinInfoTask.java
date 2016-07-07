package com.kate.collectInfo.work.task;

import java.util.HashMap;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kate.Component.sentry.handle.QuickSentry;
import com.kate.collectInfo.tools.JsonUtil;

/***
 * 收集windows系统信息
 * 
 * @author kate
 *
 */
@Service
@SuppressWarnings({ "rawtypes", "unchecked" })
public class CollectWinInfoTask {

	@Autowired
	@Qualifier("sendSysInfoHttpRes")
	private QuickSentry sendSysInfoHttpRes;
	public static final Logger logger = LogManager.getLogger(CollectWinInfoTask.class);

	/**
	 * http请求，回调数据分析系统，获取主播活动吊牌信息详情
	 * 
	 * @param reqMap
	 * @return
	 */
	public String excute(Map reqMap) throws Exception {
		try {
			logger.info("向dams发送http请求，请求的数据：" + this.getReqJson(reqMap));
			return sendSysInfoHttpRes.expressSendHttp("data=" + this.getReqJson(reqMap));
		} catch (Exception e) {
			logger.error("调用数据分析系统接口失败！！！", e);
			return "Error500";
		}
	}

	/**
	 * 将请求参数封装成Map
	 * 
	 * @param userID
	 *            主播ID
	 * @param roomID
	 *            直播间ID
	 * @param activityID
	 *            活动ID
	 * @return
	 * @throws Exception
	 */

	private String getReqJson(Map reqMap) throws Exception {
		String userID = reqMap.get("userID").toString();
		String roomID = reqMap.get("roomID").toString();
		String activityID = reqMap.get("activityID").toString();
		Map dataMap = new HashMap();
		Map reqDataMap = new HashMap();
		dataMap.put("userID", userID);
		dataMap.put("roomID", roomID);
		dataMap.put("activityID", activityID);
		dataMap.put("service", "");
		dataMap.put("reqID", "" + "_" + System.currentTimeMillis());
		reqDataMap.put("reqData", dataMap);
		return JsonUtil.getObjectToJson(reqDataMap);
	}

}

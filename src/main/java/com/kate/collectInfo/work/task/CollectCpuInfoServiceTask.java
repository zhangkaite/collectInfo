package com.kate.collectInfo.work.task;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import org.hyperic.sigar.SigarException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.ICpu;
import com.kate.collectInfo.service.entity.CpuInfo;
import com.kate.collectInfo.work.service.SigarService;
import com.kate.collectInfo.work.service.SysInfoService;

@Service
public class CollectCpuInfoServiceTask {

	public static final Logger logger = LogManager.getLogger(CollectCpuInfoServiceTask.class);

	@Autowired
	private ICpu cpuImpl;

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<CpuInfo> assembleCpuInfo() throws SigarException {
		String ip = SysInfoService.getDefaultIpAddress();
		String mac = SysInfoService.getMAC();
		List<Map<String, String>> cList = SigarService.getCpuInfos();
		List<CpuInfo> cpuList = new ArrayList<CpuInfo>();
		List<CpuInfo> resList = new ArrayList<CpuInfo>();
		for (Iterator iterator = cList.iterator(); iterator.hasNext();) {
			Map<String, String> map = (Map<String, String>) iterator.next();
			CpuInfo cpuInfo = new CpuInfo();
			cpuInfo.setCpuMhz(map.get("cpuMhz"));
			cpuInfo.setCpuVendor(map.get("cpuVendor"));
			cpuInfo.setCpuModel(map.get("cpuModel"));
			cpuInfo.setCpuCacheSize(map.get("cpuCacheSize"));
			cpuInfo.setCpuTotalCores(map.get("cpuTotalCores"));
			cpuInfo.setCpuTotalSockets(map.get("cpuTotalSockets"));
			cpuInfo.setCpuCoresPerSocket(map.get("cpuCoresPerSocket"));
			cpuInfo.setIp(ip);
			cpuInfo.setMac(mac);
			cpuList.add(cpuInfo);
		}
		List<Map<String, String>> cPercsList = SigarService.getCpuPercs();
		for (int i = 0; i < cPercsList.size(); i++) {
			Map<String, String> map = cPercsList.get(i);
			CpuInfo cpuInfo = cpuList.get(i);
			cpuInfo.setCpuNo((i + 1) + "");
			cpuInfo.setCpuUser(map.get("cpuUser"));
			cpuInfo.setCpuSys(map.get("cpuSys"));
			cpuInfo.setCpuWait(map.get("cpuWait"));
			cpuInfo.setCpuNice(map.get("cpuNice"));
			cpuInfo.setCpuIdle(map.get("cpuIdle"));
			cpuInfo.setCpuTotal(map.get("cpuTotal"));
			resList.add(i, cpuInfo);
		}
		return resList;
	}

	public void addCpuInfo() {
		try {
			List<CpuInfo> list = assembleCpuInfo();
			cpuImpl.addCpuInfo(list);
		} catch (Exception e) {
			logger.error("cpu信息存储mysql失败，失败的原因是:", e);
		}

	}

}

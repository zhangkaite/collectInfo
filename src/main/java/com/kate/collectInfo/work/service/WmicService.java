package com.kate.collectInfo.work.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.kate.collectInfo.service.entity.BiosInfo;
import com.kate.collectInfo.service.entity.DiskDriverInfo;
import com.kate.collectInfo.service.entity.NicInfo;
import com.kate.collectInfo.service.entity.OsInfo;
import com.kate.collectInfo.service.entity.PortInfo;
import com.kate.collectInfo.service.entity.ProcessInfo;
import com.kate.collectInfo.service.entity.ServiceInfo;
import com.kate.collectInfo.service.entity.SoundInfo;
import com.kate.collectInfo.tools.RumCmdUtil;

@SuppressWarnings({ "rawtypes", "unchecked" })

public class WmicService {
	public static final Logger logger = LogManager.getLogger(WmicService.class);

	public static List<NicInfo> getNicInfoList() {
		List<NicInfo> dataList = new ArrayList<NicInfo>();
		String[] command = { "cmd", "/C",
				"wmic nic get AdapterType,DeviceID,MACAddress,Name,ServiceName,Speed /value" };
		try {
			List<Map<String, Object>> list = RumCmdUtil.getAllResult(command, 6);
			for (Iterator iterator = list.iterator(); iterator.hasNext();) {
				Map<String, Object> map = (Map<String, Object>) iterator.next();
				NicInfo nicInfo = new NicInfo();
				nicInfo.setAdapterType(map.get("AdapterType") != null ? map.get("AdapterType").toString() : "");
				nicInfo.setDeviceID(map.get("DeviceID") != null ? map.get("DeviceID").toString() : "");
				nicInfo.setMACAddress(map.get("MACAddress") != null ? map.get("MACAddress").toString() : "");
				nicInfo.setName(map.get("Name") != null ? map.get("Name").toString() : "");
				nicInfo.setServiceName(map.get("ServiceName") != null ? map.get("ServiceName").toString() : "");
				nicInfo.setSpeed(map.get("Speed") != null ? map.get("Speed").toString() : "");
				nicInfo.setIp(SigarService.getDefaultIpAddress());
				nicInfo.setMac(SigarService.getMAC());
				nicInfo.setUpdateTime(new Date());
				dataList.add(nicInfo);
			}

		} catch (Exception e) {
			logger.error("获取网卡信息失败，失败的原因是:", e);
		}
		return dataList;
	}

	public static List<ProcessInfo> getProcessInfoList() {
		List<ProcessInfo> dataList = new ArrayList<ProcessInfo>();
		String[] command = { "cmd", "/C",
				"wmic process get CreationClassName,CSName,ExecutablePath,Name,OSName, ProcessId,SessionId,ThreadCount,VirtualSize,WindowsVersion,WorkingSetSize /value" };
		try {
			List<Map<String, Object>> list = RumCmdUtil.getAllResult(command, 11);
			for (Iterator iterator = list.iterator(); iterator.hasNext();) {
				Map<String, Object> map = (Map<String, Object>) iterator.next();
				ProcessInfo processInfo = new ProcessInfo();
				processInfo.setIp(SigarService.getDefaultIpAddress());
				processInfo.setMac(SigarService.getMAC());
				processInfo.setCreationClassName(
						map.get("CreationClassName") != null ? map.get("CreationClassName").toString() : "");
				processInfo.setCSName(map.get("CSName") != null ? map.get("CSName").toString() : "");
				processInfo.setExecutablePath(
						map.get("ExecutablePath") != null ? map.get("ExecutablePath").toString() : "");
				processInfo.setName(map.get("Name") != null ? map.get("Name").toString() : "");
				processInfo.setOSName(map.get("OSName") != null ? map.get("OSName").toString() : "");
				processInfo.setProcessId(map.get("ProcessId") != null ? map.get("ProcessId").toString() : "");
				processInfo.setSessionId(map.get("SessionId") != null ? map.get("SessionId").toString() : "");
				processInfo.setThreadCount(map.get("ThreadCount") != null ? map.get("ThreadCount").toString() : "");
				processInfo.setVirtualSize(map.get("VirtualSize") != null ? map.get("VirtualSize").toString() : "");
				processInfo.setWindowsVersion(
						map.get("WindowsVersion") != null ? map.get("WindowsVersion").toString() : "");
				processInfo.setWorkingSetSize(
						map.get("WorkingSetSize") != null ? map.get("WorkingSetSize").toString() : "");
				processInfo.setUpdateTime(new Date());
				// processInfo.setCpuRatioForWindows(RumCmdUtil.getCpuRatioForWindows(map.get("Name")
				// != null ? map.get("Name").toString() : ""));
				dataList.add(processInfo);
			}

		} catch (Exception e) {
			logger.error("获取进程信息失败，失败的原因是:", e);
		}
		return dataList;
	}

	public static List<ServiceInfo> getServiceInfoList() {
		List<ServiceInfo> dataList = new ArrayList<ServiceInfo>();
		String[] command = { "cmd", "/C",
				"wmic SERVICE get Description,Name,StartMode,State,ProcessId,PathName /value" };
		try {
			List<Map<String, Object>> list = RumCmdUtil.getAllResult(command, 6);
			for (Iterator iterator = list.iterator(); iterator.hasNext();) {
				Map<String, Object> map = (Map<String, Object>) iterator.next();
				ServiceInfo serviceInfo = new ServiceInfo();
				if ("Stopped".equals(map.get("State").toString())) {
					continue;
				}
				serviceInfo.setIp(SigarService.getDefaultIpAddress());
				serviceInfo.setMac(SigarService.getMAC());
				serviceInfo.setDescription(map.get("Description") != null ? map.get("Description").toString() : "");
				serviceInfo.setName(map.get("Name") != null ? map.get("Name").toString() : "");
				serviceInfo.setStartMode(map.get("StartMode") != null ? map.get("StartMode").toString() : "");
				serviceInfo.setState(map.get("State") != null ? map.get("State").toString() : "");
				serviceInfo.setProcessId(map.get("ProcessId") != null ? map.get("ProcessId").toString() : "");
				serviceInfo.setPathName(map.get("PathName") != null ? map.get("PathName").toString() : "");
				serviceInfo.setUpdateTime(new Date());
				dataList.add(serviceInfo);
			}

		} catch (Exception e) {
			logger.error("获取服务列表失败，失败的原因是:", e);
		}
		return dataList;
	}

	public static List<SoundInfo> getSoundList() {
		List<SoundInfo> dataList = new ArrayList<SoundInfo>();
		String[] command = { "cmd", "/C", "wmic SOUNDDEV get Description,Status /value" };
		try {
			List<Map<String, Object>> list = RumCmdUtil.getAllResult(command, 2);
			for (Iterator iterator = list.iterator(); iterator.hasNext();) {
				Map<String, Object> map = (Map<String, Object>) iterator.next();
				SoundInfo soundInfo = new SoundInfo();
				soundInfo.setIp(SigarService.getDefaultIpAddress());
				soundInfo.setMac(SigarService.getMAC());
				soundInfo.setDescription(map.get("Description") != null ? map.get("Description").toString() : "");
				soundInfo.setStatus(map.get("Status") != null ? map.get("Status").toString() : "");
				soundInfo.setUpdateTime(new Date());
				dataList.add(soundInfo);
			}

		} catch (Exception e) {
			logger.error("获取服务列表失败，失败的原因是:", e);
		}
		return dataList;

	}

	public static List<BiosInfo> getBiosInfo() {
		List<BiosInfo> dataList = new ArrayList<BiosInfo>();
		String[] command = { "cmd", "/C", "wmic bios get Name, Manufacturer,BIOSVersion /value" };
		try {
			List<Map<String, Object>> list = RumCmdUtil.getAllResult(command, 3);
			for (Iterator iterator = list.iterator(); iterator.hasNext();) {
				Map<String, Object> map = (Map<String, Object>) iterator.next();
				BiosInfo biosInfo = new BiosInfo();
				biosInfo.setIp(SigarService.getDefaultIpAddress());
				biosInfo.setMac(SigarService.getMAC());
				biosInfo.setManufacturer(map.get("Manufacturer") != null ? map.get("Manufacturer").toString() : "");
				biosInfo.setName(map.get("Name") != null ? map.get("Name").toString() : "");
				biosInfo.setBIOSVersion(map.get("BIOSVersion") != null ? map.get("BIOSVersion").toString() : "");
				biosInfo.setUpdateTime(new Date());
				dataList.add(biosInfo);
			}
		} catch (Exception e) {
			logger.error("获取BIOS信息失败，失败的原因是:", e);
		}
		return dataList;

	}

	public static List<PortInfo> getPortInfoList() {
		List<PortInfo> dataList = new ArrayList<PortInfo>();
		String command = "Netstat -ano";
		try {
			List<Object> list = RumCmdUtil.getSysInfo(command);
			for (int i = 3; i < list.size(); i++) {
				String data = (String) list.get(i);
				String[] datas = data.split("\\s+");
				PortInfo portInfo = new PortInfo();
				portInfo.setIp(SigarService.getDefaultIpAddress());
				portInfo.setMac(SigarService.getMAC());
				if ("TCP".equals(datas[1])) {
					portInfo.setAgreement(datas[1]);
					portInfo.setLocalAddress(datas[2]);
					portInfo.setStatu(datas[4]);
					portInfo.setPid(datas[5]);
					Map resultMap = RumCmdUtil.getTaskDetail(Integer.valueOf(datas[5]));
					if (null != resultMap && resultMap.size() > 0) {
						portInfo.setName(resultMap.get("Name") == null ? "" : resultMap.get("Name").toString());
						portInfo.setExecutablePath(resultMap.get("ExecutablePath") == null ? ""
								: resultMap.get("ExecutablePath").toString());

					}
					portInfo.setUpdateTime(new Date());
					dataList.add(portInfo);
				}

			}
		} catch (Exception e) {
			logger.error("获取服务列表失败，失败的原因是:", e);
		}
		return dataList;

	}
	
	public static List<DiskDriverInfo> getDiskDriverInfoList() throws Exception{
		List<DiskDriverInfo> dataList=new ArrayList<DiskDriverInfo>();
		String[] command={ "cmd", "/C","wmic diskdrive get serialnumber,mediatype,model,signature /value"};
		List<Map<String, Object>> list = RumCmdUtil.getAllResult(command, 4);
		for (Iterator iterator = list.iterator(); iterator.hasNext();) {
			Map<String, Object> map = (Map<String, Object>) iterator.next();
			DiskDriverInfo diskDriverInfo=new DiskDriverInfo();
			diskDriverInfo.setIp(SigarService.getDefaultIpAddress());
			diskDriverInfo.setMac(SigarService.getMAC());
			diskDriverInfo.setMediaType(map.get("MediaType") != null ? map.get("MediaType").toString() : "");
			diskDriverInfo.setModel(map.get("Model") != null ? map.get("Model").toString() : "");
			diskDriverInfo.setSerialNumber(map.get("SerialNumber") != null ? map.get("SerialNumber").toString().trim() : "");
			diskDriverInfo.setSignature(map.get("Signature") != null ? map.get("Signature").toString() : "");
			diskDriverInfo.setUpdateTime(new Date());
			dataList.add(diskDriverInfo);
		}
		return dataList;
	}
	
	public static List<OsInfo> getOsInfoList() throws Exception{
		List<OsInfo> dataList=new ArrayList<OsInfo>();
		String[] command={ "cmd", "/C","wmic os get Caption,OSArchitecture,InstallDate,Name,Organization,Version,SerialNumber /value"};
		List<Map<String, Object>> list = RumCmdUtil.getAllResult(command, 7);
		for (Iterator iterator = list.iterator(); iterator.hasNext();) {
			Map<String, Object> map = (Map<String, Object>) iterator.next();
			OsInfo osInfo=new OsInfo();
			osInfo.setIp(SigarService.getDefaultIpAddress());
			osInfo.setMac(SigarService.getMAC());
			osInfo.setCaption(map.get("Caption") != null ? map.get("Caption").toString() : "");
			osInfo.setOsArchitecture(map.get("OSArchitecture") != null ? map.get("OSArchitecture").toString() : "");
			osInfo.setInstallDate(map.get("InstallDate") != null ? map.get("InstallDate").toString() : "");
			osInfo.setName(map.get("Name") != null ? map.get("Name").toString() : "");
			osInfo.setOrganization(map.get("Organization") != null ? map.get("Organization").toString() : "");
			osInfo.setVersion(map.get("Version") != null ? map.get("Version").toString() : "");
			osInfo.setSerialNumber(map.get("SerialNumber") != null ? map.get("SerialNumber").toString() : "");
			dataList.add(osInfo);
		}
		return dataList;
	}
	
	

	/*
	 * public static void main(String[] args) throws Exception { WmicService
	 * WmicService = new WmicService();
	 * System.out.println(JsonUtil.getObjectToJson(WmicService.getPortInfoList()
	 * )); }
	 */

}

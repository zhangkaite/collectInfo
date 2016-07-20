package com.kate.collectInfo.work.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.kate.collectInfo.service.entity.NicInfo;
import com.kate.collectInfo.service.entity.PortInfo;
import com.kate.collectInfo.service.entity.ProcessInfo;
import com.kate.collectInfo.service.entity.ServiceInfo;
import com.kate.collectInfo.service.entity.SoundInfo;
import com.kate.collectInfo.tools.RumCmdUtil;
public class WmicService {
	public static final Logger logger = LogManager.getLogger(WmicService.class);

	public List<NicInfo> getNicInfoList() {
		List<NicInfo> dataList = new ArrayList<NicInfo>();
		try {
			List<Object> list = RumCmdUtil
					.getSysInfo("wmic nic get AdapterType,DeviceID,MACAddress,Name,ServiceName,Speed");
			for (int i=1;i<list.size();i++) {
				String data = (String) list.get(i);
				String[] datas = data.split("\\t");
				NicInfo nicInfo = new NicInfo();
				nicInfo.setAdapterType(datas[0]);
				nicInfo.setDeviceID(datas[1]);
				nicInfo.setMACAddress(datas[2]);
				nicInfo.setName(datas[3]);
				nicInfo.setServiceName(datas[4]);
				nicInfo.setSpeed(datas[5]);
				nicInfo.setIp(SigarService.getDefaultIpAddress());
				nicInfo.setMac(SigarService.getMAC());
				dataList.add(nicInfo);
			}
		} catch (Exception e) {
			logger.error("获取网卡信息失败，失败的原因是:", e);
		}
		return dataList;
	}

	
	public List<ProcessInfo> getProcessInfoList(){
		List<ProcessInfo> dataList=new ArrayList<ProcessInfo>();
		String command="wmic process get CreationClassName,CSName,ExecutablePath,Name,OSName, ProcessId,SessionId,ThreadCount,VirtualSize,WindowsVersion,WorkingSetSize";
		try {
			List<Object> list=RumCmdUtil.getSysInfo(command);
			for (int i=1;i<list.size();i++) {
				String data = (String) list.get(i);
				String[] datas = data.split("\\t");
				ProcessInfo processInfo=new ProcessInfo();
				processInfo.setIp(SigarService.getDefaultIpAddress());
				processInfo.setMac(SigarService.getMAC());
				processInfo.setCreationClassName(datas[0]);
				processInfo.setCSName(datas[1]);
				processInfo.setExecutablePath(datas[2]);
				processInfo.setName(datas[3]);
				processInfo.setOSName(datas[4]);
				processInfo.setProcessId(datas[5]);
				processInfo.setSessionId(datas[6]);
				processInfo.setThreadCount(datas[7]);
				processInfo.setVirtualSize(datas[8]);
				processInfo.setWindowsVersion(datas[9]);
				processInfo.setWorkingSetSize(datas[10]);
				processInfo.setCpuRatioForWindows(datas[2]);
				dataList.add(processInfo);
			}
			
		} catch (Exception e) {
			logger.error("获取进程信息失败，失败的原因是:",e);
		}
		return dataList;
	}
	
	public List<ServiceInfo> getServiceInfoList(){
		List<ServiceInfo> dataList=new ArrayList<ServiceInfo>();
		String command="wmic SERVICE get Description,Name,StartMode,State";
		try {
			List<Object> list=RumCmdUtil.getSysInfo(command);
			for (int i=1;i<list.size();i++) {
				String data = (String) list.get(i);
				String[] datas = data.split("\\t");
				ServiceInfo serviceInfo=new ServiceInfo();
				serviceInfo.setIp(SigarService.getDefaultIpAddress());
				serviceInfo.setMac(SigarService.getMAC());
				serviceInfo.setDescription(datas[0]);
				serviceInfo.setName(datas[1]);
				serviceInfo.setStartMode(datas[2]);
				serviceInfo.setState(datas[3]);
				dataList.add(serviceInfo);
				
			}
		} catch (Exception e) {
			logger.error("获取服务列表失败，失败的原因是:",e);
		}
		return dataList;
	}
	
	public List<SoundInfo> getSoundList(){
		List<SoundInfo> dataList=new ArrayList<SoundInfo>();
		String command="wmic SOUNDDEV get Description,Status";
		try {
			List<Object> list=RumCmdUtil.getSysInfo(command);
			for (int i=1;i<list.size();i++) {
				String data = (String) list.get(i);
				String[] datas = data.split("\\t");
				SoundInfo soundInfo=new SoundInfo();
				soundInfo.setIp(SigarService.getDefaultIpAddress());
				soundInfo.setMac(SigarService.getMAC());
				soundInfo.setDescription(datas[0]);
				soundInfo.setStatus(datas[1]);
				dataList.add(soundInfo);
				
			}
		} catch (Exception e) {
			logger.error("获取服务列表失败，失败的原因是:",e);
		}
		return dataList;
		
	}
	
	
	
	public List<PortInfo> getPortInfoList(){
		List<PortInfo> dataList=new ArrayList<PortInfo>();
		String command="Netstat -ano";
		try {
			List<Object> list=RumCmdUtil.getSysInfo(command);
			for (int i=1;i<list.size();i++) {
				String data = (String) list.get(i);
				String[] datas = data.split("\\t");
				PortInfo portInfo=new PortInfo();
				portInfo.setIp(SigarService.getDefaultIpAddress());
				portInfo.setMac(SigarService.getMAC());
				portInfo.setAgreement(datas[0]);
				portInfo.setLocalAddress(datas[1]);
				portInfo.setStatu(datas[3]);
				portInfo.setPid(datas[4]);
				portInfo.setName(RumCmdUtil.getTaskDetail(Integer.valueOf(datas[4])).get("Name").toString());
				dataList.add(portInfo);
				
			}
		} catch (Exception e) {
			logger.error("获取服务列表失败，失败的原因是:",e);
		}
		return dataList;
		
	}
	
	
	
	
	
	
	
	
	
	
	

}

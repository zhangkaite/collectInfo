package com.kate.collectInfo.service.entity;

import java.util.Date;

public class ProcessInfo {

	private String id;
	private String ip;
	private String mac;
	private String CreationClassName;
	private String CSName;
	private String ExecutablePath;
	private String Name;
	private String OSName;
	private String ProcessId;
	private String SessionId;
	private String ThreadCount;
	private String VirtualSize;
	private String WindowsVersion;
	private String WorkingSetSize;
	private String CpuRatioForWindows;
	private Date updateTime;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getMac() {
		return mac;
	}

	public void setMac(String mac) {
		this.mac = mac;
	}

	public String getCreationClassName() {
		return CreationClassName;
	}

	public void setCreationClassName(String creationClassName) {
		CreationClassName = creationClassName;
	}

	public String getCSName() {
		return CSName;
	}

	public void setCSName(String cSName) {
		CSName = cSName;
	}

	public String getExecutablePath() {
		return ExecutablePath;
	}

	public void setExecutablePath(String executablePath) {
		ExecutablePath = executablePath;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getOSName() {
		return OSName;
	}

	public void setOSName(String oSName) {
		OSName = oSName;
	}

	public String getProcessId() {
		return ProcessId;
	}

	public void setProcessId(String processId) {
		ProcessId = processId;
	}

	public String getSessionId() {
		return SessionId;
	}

	public void setSessionId(String sessionId) {
		SessionId = sessionId;
	}

	public String getThreadCount() {
		return ThreadCount;
	}

	public void setThreadCount(String threadCount) {
		ThreadCount = threadCount;
	}

	public String getVirtualSize() {
		return VirtualSize;
	}

	public void setVirtualSize(String virtualSize) {
		VirtualSize = virtualSize;
	}

	public String getWindowsVersion() {
		return WindowsVersion;
	}

	public void setWindowsVersion(String windowsVersion) {
		WindowsVersion = windowsVersion;
	}

	public String getWorkingSetSize() {
		return WorkingSetSize;
	}

	public void setWorkingSetSize(String workingSetSize) {
		WorkingSetSize = workingSetSize;
	}

	public String getCpuRatioForWindows() {
		return CpuRatioForWindows;
	}

	public void setCpuRatioForWindows(String cpuRatioForWindows) {
		CpuRatioForWindows = cpuRatioForWindows;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	
}

package com.kate.collectInfo.service.entity;

import java.util.Date;

public class ServiceInfo {
	private String id;
	private String ip;
	private String mac;
	private String Description;
	private String Name;
	private String ProcessId;
	private String StartMode;
	private String State;
	private String Status;
	private String PathName;
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

	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getProcessId() {
		return ProcessId;
	}
	public void setProcessId(String processId) {
		ProcessId = processId;
	}
	public String getStartMode() {
		return StartMode;
	}
	public void setStartMode(String startMode) {
		StartMode = startMode;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public String getPathName() {
		return PathName;
	}
	public void setPathName(String pathName) {
		PathName = pathName;
	}
	

}

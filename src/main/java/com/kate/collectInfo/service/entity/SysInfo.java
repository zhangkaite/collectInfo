package com.kate.collectInfo.service.entity;

import java.util.Date;

public class SysInfo {

	private String id;
	private String ip;
	private String mac;
	private String os;
	private String cpuEndian;
	private String dataModel;
	private String description;
	private String vendor;
	private String vendorCodeName;
	private String vendorName;
	private String vendorVersion;
	private String version;
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

	public String getOs() {
		return os;
	}

	public void setOs(String os) {
		this.os = os;
	}

	public String getCpuEndian() {
		return cpuEndian;
	}

	public void setCpuEndian(String cpuEndian) {
		this.cpuEndian = cpuEndian;
	}

	public String getDataModel() {
		return dataModel;
	}

	public void setDataModel(String dataModel) {
		this.dataModel = dataModel;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getVendor() {
		return vendor;
	}

	public void setVendor(String vendor) {
		this.vendor = vendor;
	}

	public String getVendorCodeName() {
		return vendorCodeName;
	}

	public void setVendorCodeName(String vendorCodeName) {
		this.vendorCodeName = vendorCodeName;
	}

	public String getVendorName() {
		return vendorName;
	}

	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}

	public String getVendorVersion() {
		return vendorVersion;
	}

	public void setVendorVersion(String vendorVersion) {
		this.vendorVersion = vendorVersion;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	
}

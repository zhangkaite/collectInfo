package com.kate.collectInfo.service.entity;

public class BiosInfo {
	// wmic bios get Manufacturer,Name,BIOSVersion /value

	private String id;
	private String ip;
	private String mac;
	private String Manufacturer;
	private String Name;
	private String BIOSVersion;

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

	public String getManufacturer() {
		return Manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		Manufacturer = manufacturer;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getBIOSVersion() {
		return BIOSVersion;
	}

	public void setBIOSVersion(String bIOSVersion) {
		BIOSVersion = bIOSVersion;
	}

}

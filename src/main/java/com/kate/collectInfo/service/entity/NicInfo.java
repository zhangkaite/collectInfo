package com.kate.collectInfo.service.entity;

/**
 * 获取网卡信息
 * 
 * @author kate
 *
 */
public class NicInfo {
	
	private String ip;
	private String mac;
	// 适配器类型
	private String AdapterType;
	// 设备编号
	private String DeviceID;
	// mac地址
	private String MACAddress;
	// 名字
	private String Name;
	private String NetworkAddresses;
	// 服务名称
	private String ServiceName;
	// 速率
	private String Speed;

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

	public String getAdapterType() {
		return AdapterType;
	}

	public void setAdapterType(String adapterType) {
		AdapterType = adapterType;
	}

	public String getDeviceID() {
		return DeviceID;
	}

	public void setDeviceID(String deviceID) {
		DeviceID = deviceID;
	}

	public String getMACAddress() {
		return MACAddress;
	}

	public void setMACAddress(String mACAddress) {
		MACAddress = mACAddress;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getNetworkAddresses() {
		return NetworkAddresses;
	}

	public void setNetworkAddresses(String networkAddresses) {
		NetworkAddresses = networkAddresses;
	}

	public String getServiceName() {
		return ServiceName;
	}

	public void setServiceName(String serviceName) {
		ServiceName = serviceName;
	}

	public String getSpeed() {
		return Speed;
	}

	public void setSpeed(String speed) {
		Speed = speed;
	}

}

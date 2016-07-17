package com.kate.collectInfo.service.entity;

import java.util.Date;

public class NetInfo {

	private String id;
	private String ip;
	private String mac;
	private String netNo;
	// 子网掩码
	private String netmask;
	// 接收的总包裹数
	private String rxPackets;
	// 发送的总包裹数
	private String txPackets;
	// 接收到的总字节数
	private String rxBytes;
	// 发送的总字节数
	private String txBytes;
	// 接收到的错误包数
	private String rxErrors;
	// 发送数据包时的错误数
	private String txErrors;
	// 接收时丢弃的包数
	private String rxDropped;
	// 发送时丢弃的包数
	private String txDropped;

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

	public String getNetNo() {
		return netNo;
	}

	public void setNetNo(String netNo) {
		this.netNo = netNo;
	}

	public String getNetmask() {
		return netmask;
	}

	public void setNetmask(String netmask) {
		this.netmask = netmask;
	}

	public String getRxPackets() {
		return rxPackets;
	}

	public void setRxPackets(String rxPackets) {
		this.rxPackets = rxPackets;
	}

	public String getTxPackets() {
		return txPackets;
	}

	public void setTxPackets(String txPackets) {
		this.txPackets = txPackets;
	}

	public String getRxBytes() {
		return rxBytes;
	}

	public void setRxBytes(String rxBytes) {
		this.rxBytes = rxBytes;
	}

	public String getTxBytes() {
		return txBytes;
	}

	public void setTxBytes(String txBytes) {
		this.txBytes = txBytes;
	}

	public String getRxErrors() {
		return rxErrors;
	}

	public void setRxErrors(String rxErrors) {
		this.rxErrors = rxErrors;
	}

	public String getTxErrors() {
		return txErrors;
	}

	public void setTxErrors(String txErrors) {
		this.txErrors = txErrors;
	}

	public String getRxDropped() {
		return rxDropped;
	}

	public void setRxDropped(String rxDropped) {
		this.rxDropped = rxDropped;
	}

	public String getTxDropped() {
		return txDropped;
	}

	public void setTxDropped(String txDropped) {
		this.txDropped = txDropped;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

}

package com.kate.collectInfo.service.entity;

import java.util.Date;

public class MemInfo {

	private String id;
	private String ip;
	private String mac;
	private String memtotals;
	private String memused;
	private String memfree;
	private String swaptotals;
	private String swapused;
	private String swapfree;
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

	public String getMemused() {
		return memused;
	}

	public void setMemused(String memused) {
		this.memused = memused;
	}

	public String getMemfree() {
		return memfree;
	}

	public void setMemfree(String memfree) {
		this.memfree = memfree;
	}

	public String getMemtotals() {
		return memtotals;
	}

	public void setMemtotals(String memtotals) {
		this.memtotals = memtotals;
	}

	public String getSwaptotals() {
		return swaptotals;
	}

	public void setSwaptotals(String swaptotals) {
		this.swaptotals = swaptotals;
	}

	public String getSwapused() {
		return swapused;
	}

	public void setSwapused(String swapused) {
		this.swapused = swapused;
	}

	public String getSwapfree() {
		return swapfree;
	}

	public void setSwapfree(String swapfree) {
		this.swapfree = swapfree;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

}

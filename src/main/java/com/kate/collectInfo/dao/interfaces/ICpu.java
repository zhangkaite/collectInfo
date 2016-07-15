package com.kate.collectInfo.dao.interfaces;

import java.util.List;

import com.kate.collectInfo.service.entity.CpuInfo;

public interface ICpu{
	
	public Integer addCpuInfo(List<CpuInfo> ls) throws Exception;
	

}

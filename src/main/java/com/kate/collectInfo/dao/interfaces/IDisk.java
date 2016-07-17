package com.kate.collectInfo.dao.interfaces;

import java.util.List;

import com.kate.collectInfo.service.entity.DiskInfo;

public interface IDisk {
	public Integer addInfo(List<DiskInfo> ls) throws Exception;
}

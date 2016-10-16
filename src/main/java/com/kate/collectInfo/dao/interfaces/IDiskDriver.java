package com.kate.collectInfo.dao.interfaces;

import java.util.List;

import com.kate.collectInfo.service.entity.DiskDriverInfo;

public interface IDiskDriver {
	public Integer addInfo(List<DiskDriverInfo> ls) throws Exception;
}

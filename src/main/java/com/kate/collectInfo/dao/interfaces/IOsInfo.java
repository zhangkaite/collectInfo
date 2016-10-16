package com.kate.collectInfo.dao.interfaces;

import java.util.List;

import com.kate.collectInfo.service.entity.OsInfo;

public interface IOsInfo {

	public Integer addInfo(List<OsInfo> ls) throws Exception;
}

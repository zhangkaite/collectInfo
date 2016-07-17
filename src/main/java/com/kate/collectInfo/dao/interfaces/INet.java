package com.kate.collectInfo.dao.interfaces;

import java.util.List;

import com.kate.collectInfo.service.entity.NetInfo;

public interface INet {

	public Integer addNetInfo(List<NetInfo> netInfo) throws Exception;
}

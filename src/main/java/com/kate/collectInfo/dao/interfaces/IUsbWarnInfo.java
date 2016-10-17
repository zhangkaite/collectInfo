package com.kate.collectInfo.dao.interfaces;

import java.util.List;

import com.kate.collectInfo.service.entity.WarnUsbInfo;

public interface IUsbWarnInfo {
	public Integer addInfo(List<WarnUsbInfo> ls) throws Exception;
}

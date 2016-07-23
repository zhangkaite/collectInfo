package com.kate.collectInfo.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kate.collectInfo.dao.interfaces.IService;
import com.kate.collectInfo.dao.mapper.BiosInfoMapper;
import com.kate.collectInfo.dao.mapper.NicInfoMapper;
import com.kate.collectInfo.dao.mapper.PortInfoMapper;
import com.kate.collectInfo.dao.mapper.ProcessInfoMapper;
import com.kate.collectInfo.dao.mapper.ServiceInfoMapper;
import com.kate.collectInfo.dao.mapper.SoundInfoMapper;
import com.kate.collectInfo.service.entity.BiosInfo;
import com.kate.collectInfo.service.entity.NicInfo;
import com.kate.collectInfo.service.entity.PortInfo;
import com.kate.collectInfo.service.entity.ProcessInfo;
import com.kate.collectInfo.service.entity.ServiceInfo;
import com.kate.collectInfo.service.entity.SoundInfo;
@Service
public class ServiceImpl implements IService {

	@Autowired
	private NicInfoMapper nicInfoMapper;
	@Autowired
	private ProcessInfoMapper processInfoMapper;
	@Autowired
	private ServiceInfoMapper serviceInfoMapper;
	@Autowired
	private SoundInfoMapper soundInfoMapper;
	@Autowired
	private BiosInfoMapper biosInfoMapper;
	@Autowired
	private PortInfoMapper portInfoMapper;
	@Override
	public Integer addNicInfo(List<NicInfo> netInfo) throws Exception {
		return nicInfoMapper.addNetInfoList(netInfo);
	}

	@Override
	public Integer addProcessInfoList(List<ProcessInfo> processInfo) throws Exception {
		return processInfoMapper.addInfoList(processInfo);
	}

	@Override
	public Integer addServiceInfo(List<ServiceInfo> serviceInfo) throws Exception {
		return serviceInfoMapper.addInfoList(serviceInfo);
	}

	@Override
	public Integer addSoundListInfo(List<SoundInfo> soundInfo) throws Exception {
		return soundInfoMapper.addInfoList(soundInfo);
	}

	@Override
	public Integer addBiosInfo(List<BiosInfo> netInfo) throws Exception {
		return biosInfoMapper.addNetInfoList(netInfo);
	}

	@Override
	public Integer addPortInfo(List<PortInfo> portInfoList) throws Exception {
		return portInfoMapper.addNetInfoList(portInfoList);
	}

}

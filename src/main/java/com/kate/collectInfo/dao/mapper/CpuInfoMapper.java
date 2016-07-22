package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.CpuInfo;

/**
 * 
 * @author kate
 *
 */
@Component
public class CpuInfoMapper extends AbstractMapper<CpuInfo> {

	private String CPUINFOMAPPER = "com.kate.collectInfo.dao.mapper.CpuInfoMapper";

	public Integer addRichUserRankingData(List<CpuInfo> list) throws Exception {
		setMapperPack(CPUINFOMAPPER);
		try {
			for (CpuInfo cpuInfo : list) {
				CpuInfo isExit = queryData(cpuInfo);
				if (null != isExit) {
					cpuInfo.setId(isExit.getId());
					cpuInfo.setUpdateTime(new Date());
					updataData(cpuInfo);
				} else {
					cpuInfo.setUpdateTime(new Date());
					addData(cpuInfo);
				}

			}

		} catch (Exception e) {
			throw e;

		}
		return null;
	}

}

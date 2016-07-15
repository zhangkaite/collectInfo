package com.kate.collectInfo.dao.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kate.collectInfo.service.entity.CpuInfo;

/**
 * 
 * @author kate
 *
 */
@Component
public class CpuInfoMapper {

	private String CPUINFOMAPPER = "com.kate.collectInfo.dao.mapper.CpuInfoMapper";

	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	public Integer addRichUserRankingData(List<CpuInfo> list) throws Exception {
		SqlSession sqlSession = null;
		Integer result = null;
		try {
			sqlSession = sqlSessionFactory.openSession();

			for (CpuInfo cpuInfo : list) {
				cpuInfo.setUpdateTime(new Date());
				CpuInfo ranking = sqlSession.selectOne(CPUINFOMAPPER + ".selectCpuInfoOne", cpuInfo);
				if (null != ranking) {
					cpuInfo.setId(ranking.getId());
					result = sqlSession.update(CPUINFOMAPPER + ".updateCpuInfoByPrimaryKey", cpuInfo);
				} else {
					result = sqlSession.insert(CPUINFOMAPPER + ".insertCpuInfoSelective", cpuInfo);
				}
			}
			if (result != null) {
				return result;
			}
		} catch (Exception e) {
			throw e;

		} finally {
			if (null != sqlSession) {
				sqlSession.close();
			}

		}
		return null;
	}

	public Integer updateRichUserRankingData(CpuInfo cpuInfo) throws Exception {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			cpuInfo.setUpdateTime(new Date());
			Integer result = sqlSession.update(CPUINFOMAPPER + ".updateByPrimaryKey", cpuInfo);
			if (result != null) {
				return result;
			}
		} catch (Exception e) {
			throw e;
		} finally {
			if (null != sqlSession) {
				sqlSession.close();
			}

		}
		return 0;
	}

}

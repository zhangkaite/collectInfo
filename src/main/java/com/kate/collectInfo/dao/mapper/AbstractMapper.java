package com.kate.collectInfo.dao.mapper;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
@SuppressWarnings({"hiding","unused"})
public abstract class AbstractMapper<T> {
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	private String mapperPack;

	public String getMapperPack() {
		return mapperPack;
	}

	public void setMapperPack(String mapperPack) {
		this.mapperPack = mapperPack;
	}

	public  List<T>  queryDataList(T data,String keyName) throws Exception{
		SqlSession sqlSession = null;
		List<T> result = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.selectList(mapperPack + "."+keyName, data);
		} catch (Exception e) {
			throw e;
		} finally {
			if (null != sqlSession) {
				sqlSession.close();
			}
		}
		return result;
	}
	
	
	
	public <T> T queryData(T data) throws Exception {
		SqlSession sqlSession = null;
		T result = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.selectOne(mapperPack + ".selectOne", data);
		} catch (Exception e) {
			throw e;

		} finally {
			if (null != sqlSession) {
				sqlSession.close();
			}

		}

		return result;
	}

	
	public <T> T queryData(T data,String kegName) throws Exception {
		SqlSession sqlSession = null;
		T result = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.selectOne(mapperPack +"."+ kegName, data);
		} catch (Exception e) {
			throw e;

		} finally {
			if (null != sqlSession) {
				sqlSession.close();
			}

		}

		return result;
	}
	
	
	public <T> Integer addData(T data) throws Exception {
		SqlSession sqlSession = null;
		Integer result = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.insert(mapperPack + ".insertData", data);
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
		return result;
	}

	
	public <T> Integer addData(T data,String keyName) throws Exception {
		SqlSession sqlSession = null;
		Integer result = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			result = sqlSession.insert(mapperPack +"."+ keyName, data);
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
		return result;
	}

	
	public Integer updataData(T t) throws Exception {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			// cpuInfo.setUpdateTime(new Date());
			Integer result = sqlSession.update(mapperPack + ".updateByKey", t);
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
	
	public Integer updataData(T t,String keyName) throws Exception {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			// cpuInfo.setUpdateTime(new Date());
			Integer result = sqlSession.update(mapperPack +"."+ keyName, t);
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

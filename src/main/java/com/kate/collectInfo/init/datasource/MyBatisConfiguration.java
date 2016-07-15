package com.kate.collectInfo.init.datasource;

import java.beans.PropertyVetoException;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import com.mchange.v2.c3p0.ComboPooledDataSource;

/**
 * myBatis config
 */

@Configuration
@EnableAutoConfiguration
public class MyBatisConfiguration {

	private final Logger log = LogManager.getLogger(MyBatisConfiguration.class);

	@Autowired
	public DataSourceProperties properties;

	@Autowired
	private ComboPooledDataSource comboPooledDataSource;


	/**
	 * 配置myBatis
	 *
	 * @return
	 */

	@Bean(name="comboPooledDataSource")
	public ComboPooledDataSource comboPooledDataSource() {
		try {
			ComboPooledDataSource comboPooledDataSource = new ComboPooledDataSource();
			comboPooledDataSource.setUser(properties.getUsername());
			comboPooledDataSource.setPassword(properties.getPassword());
			comboPooledDataSource.setDriverClass(properties.getDriverClassName());
			comboPooledDataSource.setJdbcUrl(properties.getUrl());
			comboPooledDataSource.setMaxPoolSize(200);
			comboPooledDataSource.setMinPoolSize(5);
			comboPooledDataSource.setCheckoutTimeout(3000);
			comboPooledDataSource.setMaxIdleTime(3600);
			comboPooledDataSource.setAutoCommitOnClose(true);
			return comboPooledDataSource;
		} catch (PropertyVetoException e) {
			log.error("获取c3p0数据元失败！！！！");
		}

		return null;
	}

	@Bean(name="sqlSessionFactory")
	public SqlSessionFactory sqlSessionFactory() {
		SqlSessionFactory sqlSessionFactory = null;
		try {
			SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
			PathMatchingResourcePatternResolver p = new PathMatchingResourcePatternResolver();
			Resource[] resources = p.getResources("classpath:/mapper/*.xml");
			bean.setDataSource(comboPooledDataSource);
			bean.setMapperLocations(resources);
			sqlSessionFactory = bean.getObject();
		} catch (Exception e) {
			log.error("获取数据源SessionFactory失败！！！！",e);
			System.exit(0);
		}
		return sqlSessionFactory;
	}

	/*@Bean
	public PlatformTransactionManager transactionManager() {
		return new DataSourceTransactionManager(comboPooledDataSource);
	}*/

}

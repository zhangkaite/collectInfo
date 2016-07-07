package com.kate.collectInfo.init.datasource;

import org.springframework.beans.factory.BeanClassLoaderAware;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;


/**
 * 获取数据库的连接信息，在application.properties中配置，并指定特定的前缀
 *
 */
@Component
@ConfigurationProperties(prefix = MqDataSourceProperties.PREFIX)
public class MqDataSourceProperties implements BeanClassLoaderAware{
	
	public static final String PREFIX = "activeMQ";
	private String brokerURL;
	private String destionatin;
	private String activityRankingList;
	private String richRankingList;
	private String starRankingList;
	private String userActivityRankingList;
	private String UserContributionList;
	private ClassLoader classLoader;
	
	public String getUserContributionList() {
		return UserContributionList;
	}
	
	
	public void setUserContributionList(String userContributionList) {
		UserContributionList = userContributionList;
	}
	
	
	public String getUserActivityRankingList() {
		return userActivityRankingList;
	}


	public void setUserActivityRankingList(String userActivityRankingList) {
		this.userActivityRankingList = userActivityRankingList;
	}


	public String getActivityRankingList() {
		return activityRankingList;
	}


	public void setActivityRankingList(String activityRankingList) {
		this.activityRankingList = activityRankingList;
	}


	public String getRichRankingList() {
		return richRankingList;
	}


	public void setRichRankingList(String richRankingList) {
		this.richRankingList = richRankingList;
	}


	public String getStarRankingList() {
		return starRankingList;
	}


	public void setStarRankingList(String starRankingList) {
		this.starRankingList = starRankingList;
	}


	public String getDestionatin() {
		return destionatin;
	}


	public void setDestionatin(String destionatin) {
		this.destionatin = destionatin;
	}


	public String getBrokerURL() {
		return brokerURL;
	}


	public void setBrokerURL(String brokerURL) {
		this.brokerURL = brokerURL;
	}


	/**
	 * @return the classLoader
	 */
	public ClassLoader getClassLoader() {
		return classLoader;
	}

	
	@Override
	public void setBeanClassLoader(ClassLoader classLoader) {
		this.classLoader = classLoader;
		
	}
	
	
}
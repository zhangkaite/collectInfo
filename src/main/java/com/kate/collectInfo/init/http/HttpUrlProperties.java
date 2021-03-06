package com.kate.collectInfo.init.http;

import org.springframework.beans.factory.BeanClassLoaderAware;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 获取数据库的连接信息，在application.properties中配置，并指定特定的前缀
 *
 */
@Component
@ConfigurationProperties(prefix = HttpUrlProperties.PREFIX)
public class HttpUrlProperties implements BeanClassLoaderAware {

	public static final String PREFIX = "httpUrl";
	private ClassLoader classLoader;
	/**
	 * 主播活动信息查询url
	 */
	private String serverUrl;

	public String getServerUrl() {
		return serverUrl;
	}

	public void setServerUrl(String serverUrl) {
		this.serverUrl = serverUrl;
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
package com.kate.collectInfo.init.http;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.kate.Component.sentry.handle.QuickSentry;
import com.kate.Component.sentry.http.HttpRequestPost;

/**
 * 启动实例化用户活动信息查询http请求
 * 
 * @author zkt
 *
 */

@Configuration
@EnableAutoConfiguration
public class SendSysInfoConf {

	@Autowired
	public HttpUrlProperties httpUrlProperties;

	@Autowired
	public HttpRequestPost httpRequestPost;

	@Bean
	public HttpRequestPost httpRequestPost() {
		HttpRequestPost httpRequestPost = new HttpRequestPost(httpUrlProperties.getServerUrl());
		return httpRequestPost;
	}

	@Bean(name = "sendSysInfoHttpRes")
	public QuickSentry sendSysInfoHttpRes() {
		QuickSentry quickSentry = new QuickSentry();
		quickSentry.setHttpRequestPost(httpRequestPost);
		return quickSentry;
	}

}

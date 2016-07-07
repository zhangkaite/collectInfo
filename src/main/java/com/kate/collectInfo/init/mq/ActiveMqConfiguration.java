package com.kate.collectInfo.init.mq;

import org.apache.activemq.ActiveMQConnectionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.kate.collectInfo.init.datasource.MqDataSourceProperties;

/*@Configuration
@EnableAutoConfiguration*/
public class ActiveMqConfiguration {

	@Autowired
	public MqDataSourceProperties properties;

	@Bean
	public ActiveMQConnectionFactory activeMQConnectionFactory() {
		return new ActiveMQConnectionFactory(properties.getBrokerURL());
	}

}

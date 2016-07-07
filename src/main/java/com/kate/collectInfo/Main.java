package com.kate.collectInfo;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;


@SpringBootApplication
@EnableScheduling
public class Main {
	private static Logger logger = LogManager.getLogger(Main.class);
	public static void main(String[] args) throws Exception {
        SpringApplication.run(Main.class, args);
        logger.info("######collectInfo系统启动成功######");
    }
}

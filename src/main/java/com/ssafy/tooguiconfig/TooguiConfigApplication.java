package com.ssafy.tooguiconfig;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class TooguiConfigApplication {

    public static void main(String[] args) {
        SpringApplication.run(TooguiConfigApplication.class, args);
    }

}

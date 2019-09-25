package com.kainattu.microservice.oauth.jwt.ds;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@EnableEurekaClient
@SpringBootApplication
public class ResourceServerJwtApplication {

    public static void main(String... args) {
        SpringApplication.run(ResourceServerJwtApplication.class, args);
    }

}

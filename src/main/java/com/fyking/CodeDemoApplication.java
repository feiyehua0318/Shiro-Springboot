package com.fyking;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.fyking.mapper")
public class CodeDemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(CodeDemoApplication.class, args);
    }

}

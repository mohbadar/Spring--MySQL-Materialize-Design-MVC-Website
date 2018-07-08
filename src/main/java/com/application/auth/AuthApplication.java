package com.application.auth;

import com.application.storage.FileStorage;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ImportResource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@SpringBootApplication
@ComponentScan(basePackages= {"com.application"})
@EntityScan({"com.application"})
@EnableJpaRepositories({"com.application"})
public class AuthApplication {
//
//	@Resource
//	FileStorage fileStorage;

	public static void main(String[] args) throws Exception {
		SpringApplication.run(AuthApplication.class, args);
	}

//	@Override
//	public void run(String... args) throws Exception {
//		fileStorage.deleteAll();
//		fileStorage.init();
//	}

}

package com.dhtesting.S4.Students;

import java.util.List;


import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class StudentConfig {

	@Bean
	CommandLineRunner commandLineRunner(StudentRepository repository) {
		return args -> {
			Student brandon = new Student("Vallejos Silva", "Jhimy Brandon");
			Student henry = new Student("Ford", "Henry");
			repository.saveAll(List.of(brandon, henry));
		};
		
	}
	
}

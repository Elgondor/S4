package com.dhtesting.S4.Courses;

import java.util.List;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
public class CourseConfig {
	
	@Bean
	CommandLineRunner commandLineRunnerCourse(CourseRepository repository) {
		return args -> {
			Course history = new Course("History", "Where we learn about history");
			Course math = new Course("Math", "To learn all about math");
			repository.saveAll(List.of(history, math));
		};
		
	}
	
}

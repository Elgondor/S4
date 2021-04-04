package com.dhtesting.S4.Courses;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CourseService {
	private final CourseRepository courseRepository;
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Autowired
	public CourseService(CourseRepository courseRepository) {
		this.courseRepository = courseRepository;
	}

	public List<Course> getCourses(String keyword) {
		if(keyword != null){
			return courseRepository.findAll(keyword); 
		}
		return (List<Course>) courseRepository.findAll();
	}

	public void deleteCourse(Long code) {
		courseRepository.deleteById(code);
	}

	public void createCourse(Course course) {
		courseRepository.save(course);
	}

	public Optional<Course> getCourseById(Long code) {
		return courseRepository.findById(code);
	}

}

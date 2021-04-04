package com.dhtesting.S4.Courses;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long>{
	
	@Query(value = "SELECT c.code, c.title, c.description FROM course c WHERE CONCAT(c.title, ' ', c.description) LIKE %?1%", nativeQuery = true)
	public List<Course> findAll(String keyword);
}

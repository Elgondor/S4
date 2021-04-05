package com.dhtesting.S4.Students;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


@Repository
public interface StudentRepository extends JpaRepository<Student, Long>{
	
	@Query(value = "SELECT s.id, s.last_name, s.first_name FROM Student s WHERE CONCAT(s.id, ' ', s.last_name, ' ', s.first_name) LIKE %?1%", 
			nativeQuery = true)
	public List<Student> findAll(String keyword);
	
}
package com.dhtesting.S4.Students;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


@Repository
public interface StudentRepository extends JpaRepository<Student, Long>{
	
//	@Query("SELECT s FROM Student s WHERE CONCAT(s.code, ' ', s.title, ' ', s.description) LIKE %?1%")
//	public List<Student> findAll(String keyword);
	
}
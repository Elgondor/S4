package com.dhtesting.S4.Students;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService {
	private final StudentRepository studentRepository;
	
	@Autowired
	public StudentService(StudentRepository studentRepository){
		this.studentRepository = studentRepository;
	}
	
	public List<Student> getStudents(String keyword){
//		if(keyword != null) {
//			return studentRepository.findAll(keyword);
//		}
		return (List<Student>) studentRepository.findAll();
	}

	public void deleteStudent(Long studentId) {
		studentRepository.deleteById(studentId);
	}
	
	public void createStudent(Student student) {
		studentRepository.save(student);
	}
	
	public Optional<Student> getStudentById(Long studentId) {
		return studentRepository.findById(studentId);
	}
	
	
}

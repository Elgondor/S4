package com.dhtesting.S4.Courses;

import java.util.Set;

import javax.persistence.*;

import com.dhtesting.S4.Students.Student;

@Entity
@Table
public class Course {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "code")
	private Long code;
	
	@Column(name = "title")
	private String title;
	
	@Column(name = "description")
	private String description;
	
	@ManyToMany
	@JoinTable(name = "course_student", joinColumns = @JoinColumn(name = "code"), inverseJoinColumns = @JoinColumn(name = "id"))
	private Set<Student> students;

	public Course(){}
	
	
	public Course(String title, String description) {
		super();
		this.title = title;
		this.description = description;
	}



	public Long getCode() {
		return code;
	}

	public void setCode(Long code) {
		this.code = code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<Student> getStudents() {
		return students;
	}

	public void setStudents(Set<Student> students) {
		this.students = students;
	}
	
	
	
	
}

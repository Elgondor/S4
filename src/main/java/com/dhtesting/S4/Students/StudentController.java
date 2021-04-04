package com.dhtesting.S4.Students;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.dhtesting.S4.Courses.Course;
import com.dhtesting.S4.Courses.CourseService;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	private final StudentService studentService;
	private final CourseService courseService;
	
	@Autowired
	public StudentController(StudentService studentService, CourseService courseService){
		this.studentService = studentService;
		this.courseService = courseService;
	}
	
	@RequestMapping("/")
	public String index(@RequestParam(value = "keyword", required = false) String keyword, Model model) {
		
		List<Student> students = studentService.getStudents(keyword);
		
		model.addAttribute("students", students);
		return "indexStudent";
	}
	
	@GetMapping(path = "/deleteStudent")
	@Transactional
	public String deleteStudent(@RequestParam("studentId") Long studentId) {
		studentService.deleteStudent(studentId);
		
		return "redirect:/student/";
	}
	
	
	@RequestMapping(path = "/updateStudent")
	public String updateStudent(@RequestParam("studentId") Long studentId, Model model){
		
		model.addAttribute("student", studentService.getStudentById(studentId));
		
		return "createStudent";
	}
	
	
	@RequestMapping("/showForm")
	public String createStudentForm(Model model){
		
		Student student = new Student();
		
		model.addAttribute("student", student);
		model.addAttribute("courses", courseService.getCourses(null));
		
		return "createStudent";
	}
	
	@PostMapping("/createStudent")
	@Transactional
	public String createStudent(@ModelAttribute("student") Student student ){
		
		studentService.createStudent(student);
		
		return "redirect:/student/";
	}
	
	
	@GetMapping(path = "/getAllCoursesFromStudent")
	@Transactional
	public String getAllStudentsFromCourse(@RequestParam("studentId") Long studentId, Model model){
		
		model.addAttribute("student", this.studentService.getStudentById(studentId).get());
		
		return "coursesFromStudent";
	}
}

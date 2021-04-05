package com.dhtesting.S4.Courses;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dhtesting.S4.Students.StudentService;


@Controller
@RequestMapping("/course")
public class CourseController {
	private final CourseService courseService;
	
	private final StudentService studentService;
	
	@Autowired
	public CourseController(CourseService courseService, StudentService studentService){
		this.courseService = courseService;
		
		this.studentService = studentService;
	}
	
	@RequestMapping({"/",""})
	public String index(@RequestParam(value = "keyword", required = false) String keyword, Model model) {
		List<Course> courses = courseService.getCourses(keyword);
		
		model.addAttribute("courses", courses);
		return "indexCourse";
	}
	
	@GetMapping(path = "/deleteCourse")
	@Transactional
	public String deleteCourse(@RequestParam("code") Long code) {
		courseService.deleteCourse(code);
		
		return "redirect:/course/";
	}
	
	
	@RequestMapping("/createCourseForm")
	public String createCourseForm(Model model){
		
		Course course = new Course();
		
		model.addAttribute("course", course);
		model.addAttribute("students", studentService.getStudents(null));
		
		return "createCourse";
	}
	
	
	@PostMapping("/createCourse")
	@Transactional
	public String createCourse(@ModelAttribute("course") Course course ){
		
		courseService.createCourse(course);
		
		return "redirect:/course/";
	}
	
	
	@RequestMapping(path = "/updateCourse")
	public String updateCourse(@RequestParam("code") Long code, Model model){
		model.addAttribute("course", courseService.getCourseById(code));
		model.addAttribute("students", studentService.getStudents(null));
		
		return "createCourse";
	}
	
	@GetMapping(path = "/getAllStudentsFromCourse")
	@Transactional
	public String getAllStudentsFromCourse(@RequestParam("code") Long code, Model model){
		
		model.addAttribute("course", this.courseService.getCourseById(code).get());
		
		return "studentsFromCourse";
	}
}

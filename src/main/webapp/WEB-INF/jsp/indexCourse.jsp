<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courses</title>
</head>
<body>
	<h1>Courses</h1>
	<div>
		<form action="/course/">  
			Keyword : <input type="text" name="keyword"/>
			<input type="submit" value="Search"> 
		</form>  
	</div>

	<table border="1">
		<thead>
			<tr>
				<th>Code</th>
				<th>Title</th>
				<th>Description</th>
				<th>Students</th>
				<th>Edit & Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="course" items="${courses}">
				<c:url var="deleteLink" value="/course/deleteCourse/">
					<c:param name="code" value="${course.code}"/>
				</c:url>
				
				<c:url var="updateLink" value="/course/updateCourse/">
					<c:param name="code" value="${course.code}"/>
				</c:url>
				
				<c:url var="studentsLink" value="/course/getAllStudentsFromCourse/">
					<c:param name="code" value="${course.code}"/>
				</c:url>
			
			
				<tr>
					<td>${course.code}</td>
		            <td>${course.title}</td>
		            <td>${course.description}</td>
		            <td>
		            	<a href="${studentsLink}">Students</a>
		            </td>
		            <td>
			            
			            <a href="${updateLink}">Edit</a>
			            
			            <a href="${deleteLink}">Delete</a>
		            </td>
				</tr>
			</c:forEach>
		</tbody>
		
	
	
	</table>
		
	<a href="/course/createCourseForm">Create</a>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courses</title>
<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<h1>Courses</h1>
	
	<div>
		<form action="/course/">
			<div class="input-group">
				<input type="text" class="form-control" name="keyword" placeholder="Search"/>
				<div class="input-group-btn">
			    	<button class="btn btn-default" type="submit" value="Search"><i class="glyphicon glyphicon-search"></i></button>
				</div>
			</div>
		</form>
	</div>

	<table class="table table-striped">
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
		            	<a href="${studentsLink}" class="btn btn-info" role="button">Students</a>
		            </td>
		            <td>
			            
			            <a href="${updateLink}" class="btn btn-primary" role="button">Edit</a>
			            
			            <a href="${deleteLink}" class="btn btn-danger" role="button">Delete</a>
		            </td>
				</tr>
			</c:forEach>
		</tbody>
		
	
	
	</table>
		
	<a href="/course/createCourseForm" class="btn btn-success" role="button">Create</a>
	<a href="/" class="btn btn-danger" role="button">Go back</a>
	
</body>
</html>
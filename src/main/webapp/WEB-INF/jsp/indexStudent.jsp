<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students</title>
<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<h1>Students</h1>
	<div>
		<form action="/student/">
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
				<th>ID</th>
				<th>First name</th>
				<th>Last name</th>
				<th>Courses</th>
				<th>Edit & Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="student" items="${students}">
				<c:url var="deleteLink" value="/student/deleteStudent/">
					<c:param name="studentId" value="${student.studentId}"/>
				</c:url>
				
				<c:url var="updateLink" value="/student/updateStudent/">
					<c:param name="studentId" value="${student.studentId}"/>
				</c:url>
				
				<c:url var="coursesLink" value="/student/getAllCoursesFromStudent/">
					<c:param name="studentId" value="${student.studentId}"/>
				</c:url>
			
			
				<tr>
					<td>${student.studentId}</td>
		            <td>${student.firstName}</td>
		            <td>${student.lastName}</td>
		            
		            <td>
						<a href="${coursesLink}" class="btn btn-info" role="button">Courses</a>
					</td>
		            
		            <td>
			            
			            <a href="${updateLink}" class="btn btn-primary" role="button">Edit</a>
			            
			            <a href="${deleteLink}" class="btn btn-danger" role="button">Delete</a>
		            </td>
				</tr>
			</c:forEach>
		</tbody>
		
	</table>
		
	<a href="/student/showForm" class="btn btn-success" role="button">Create</a>
	<a href="/" class="btn btn-danger" role="button">Go back</a>
</body>
</html>
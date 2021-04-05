<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students from Course</title>
<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<h1> ${course.title} </h1>
	
	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>First name</th>
				<th>Last name</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="student" items="${course.students}">
				<tr>
					<td>${student.studentId}</td>
		            <td>${student.firstName}</td>
		            <td>${student.lastName}</td>
				</tr>
			</c:forEach>
		</tbody>
		
	
	
	</table>
		
	<a href="/course/" class="btn btn-danger" role="button">Back</a>
	
</body>
</html>
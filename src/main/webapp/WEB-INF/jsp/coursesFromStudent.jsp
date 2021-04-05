<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courses from Student</title>
<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<h1> ${Student.firstName} </h1>

	<table class="table table-striped">
		<thead>
			<tr>
				<th>Code</th>
				<th>Title</th>
				<th>Description</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="course" items="${student.courses}">
				<tr>
					<td>${course.code}</td>
		            <td>${course.title}</td>
		            <td>${course.description}</td>
				</tr>
			</c:forEach>
		</tbody>
		
	
	
	</table>
		
	<a href="/student/" class="btn btn-danger" role="button">Go back</a>
	
</body>
</html>
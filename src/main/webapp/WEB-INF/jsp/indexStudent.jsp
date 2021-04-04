<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students</title>
</head>
<body>
	<h1>Students</h1>
	<div>
		<form action="/student/">  
			Keyword : <input type="text" name="keyword"/>
			<input type="submit" value="Search"> 
		</form>
	</div>

	<table border="1">
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
						<a href="${coursesLink}">Courses</a>
					</td>
		            
		            <td>
			            
			            <a href="${updateLink}">Edit</a>
			            
			            <a href="${deleteLink}">Delete</a>
		            </td>
				</tr>
			</c:forEach>
		</tbody>
		
	
	
	</table>
		
	<a href="/student/showForm">Create</a>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
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
		
	<a href="/course/">Back</a>
	
</body>
</html>
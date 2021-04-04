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
	<H1> ${Student.firstName} </H1>

	<table border="1">
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
		
	<a href="/student/">Back</a>
	
</body>
</html>
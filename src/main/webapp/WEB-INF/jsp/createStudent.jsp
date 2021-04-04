<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create student</title>
</head>
<body>
	<form:form action="/student/createStudent" modelAttribute="student" method="POST">
		First name: <form:input path="firstName"/>
		<br>
		Last name: <form:input path="lastName"/>
		<br>
		Id: <form:input path="studentId"/>
		<br>
		Courses:
		<form:select path="courses" items="${courses}" itemValue="code" itemLabel="title" />
		
		<input type="submit" value="Submit">
	</form:form>
</body>
</html>
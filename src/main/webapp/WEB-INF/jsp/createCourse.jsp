<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create course</title>
</head>
<body>
	<form:form action="/course/createCourse" modelAttribute="course" method="POST">
		Title: <form:input path="title"/>
		<br>
		Description: <form:input path="description"/>
		<br>
		Code: <form:input path="code"/>
		<br>
		Students:
		<form:select path="students" items="${students}" itemValue="studentId" itemLabel="firstName" />
		
		<input type="submit" value="Submit">
	</form:form>
</body>
</html>
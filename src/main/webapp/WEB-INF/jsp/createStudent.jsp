<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create student</title>
<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<h2>Create/Update student</h2>
	<form:form class="form-horizontal" action="/student/createStudent" modelAttribute="student" method="POST">
		
		
		<div class="form-group">
	      <label class="control-label col-sm-2" for="firstName">First Name:</label>
	      <div class="col-sm-10">
	        <form:input type="text" class="form-control" id="firstName" placeholder="Enter your first name" name="firstName" path="firstName"/>
	      </div>
	    </div>
	    
	    <div class="form-group">
	      <label class="control-label col-sm-2" for="lastName" >Last Name:</label>
	      <div class="col-sm-10">
	        <form:input type="text" class="form-control" id="lastName" placeholder="Enter your last name" name="lastName" path="lastName"/>
	      </div>
	    </div>
	    	    
	    <div class="form-group" style="display: none;">
	      Id: <form:input path="studentId"/>
	    </div>
	    
		
		<div class="form-group">
			<label class="control-label col-sm-2" for="courses">Courses:</label>
			<form:select cssClass="form-control" path="courses" items="${courses}" itemValue="code" itemLabel="title" />
		</div>
		<div class="form-group">        
	      <div class="col-sm-offset-2 col-sm-10">
	      	<input type="submit" class="btn btn-default" value="Submit">
	      	<a href="/student/" class="btn btn-danger" role="button">Go back</a>
	      </div>
	    </div>
	</form:form>
	
</body>
</html>
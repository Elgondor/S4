<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create course</title>
<link href="/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<h2>Create/Update Course</h2>
	<form:form class="form-horizontal" action="/course/createCourse" modelAttribute="course" method="POST">	
		
		<div class="form-group">
	      <label class="control-label col-sm-2" for="title">Title:</label>
	      <div class="col-sm-10">
	        <form:input type="text" class="form-control" id="title" placeholder="Enter the course title" name="title" path="title"/>
	      </div>
	    </div>
	    
	    <div class="form-group">
	      <label class="control-label col-sm-2" for="description">Description:</label>
	      <div class="col-sm-10">
	        <form:input type="text" class="form-control" id="description" placeholder="Enter the course description" name="description" path="description"/>
	      </div>
	    </div>
		
		<div class="form-group" style="display: none;">
	    	Code: <form:input path="code"/>
	    </div>
		
		<div class="form-group">
			<label class="control-label col-sm-2" for="courses">Students:</label>
			<form:select cssClass="form-control" path="students" items="${students}" itemValue="studentId" itemLabel="firstName" />
		</div>
		
		<div class="form-group">        
	      <div class="col-sm-offset-2 col-sm-10">
	      	<input type="submit" class="btn btn-default" value="Submit">
	      	<a href="/course/" class="btn btn-danger" role="button">Go back</a>
	      </div>
	    </div>
	</form:form>
</body>
</html>
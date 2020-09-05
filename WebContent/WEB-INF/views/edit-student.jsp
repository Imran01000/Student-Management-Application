<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Student</title>
<link href="https://unpkg.com/bootstrap@4.1.0/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.heading {
	text-align: center;
}
</style>
</head>
<body>
<div class="container">
   		<div class="heading" style="padding: 1cm">
        <h2>Edit Student Details</h2>
        </div>
        <form:form action="save" method="post" modelAttribute="student">
              <div class="form-row">
              <div class="form-group col-md-6">
           		<label>Id</label>
           		<form:input path="id" class="form-control" placeholder="${student.id}"></form:input>
           		</div>
           		<div class="form-group col-md-6">
           		<label>FirstName</label>
           		<form:input path="firstName" class="form-control" placeholder="Enter your first name"></form:input>
           		</div>
           		<div class="form-group col-md-6">
           		<label>LastName</label>
           		<form:input path="lastName" class="form-control" placeholder="Enter your last name"></form:input>
           		</div>
           		<div class="form-group col-md-6">
           		<label>Mobile-No</label>
           		<form:input path="mobileNo" class="form-control" placeholder="Enter your mobile no"></form:input>
           		</div>
           </div>
           <div class="form-group">
           		<label>Address</label>
        		<form:input path="address" class="form-control" placeholder="Enter your address"></form:input>
           </div>
             <button type="submit" class="btn btn-primary">Confirm</button>
        </form:form>
    </div>
    
    </div>
</body>
</html>
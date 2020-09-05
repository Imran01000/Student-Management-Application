<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<title>Student Manager</title>
<link href="https://unpkg.com/bootstrap@4.1.0/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div align="center">
    <h2>Student Manager</h2>
    <form method="get" action="search">
        <input type="text" name="keyword" /> &nbsp;
        <button type="button" class="btn">Search</button>
    </form>
    <div class="container" style="padding: 0.5cm">
    <button type="button" class="btn btn-default" onclick="window.location.href='newStudent'"><h3>New Student</h3></button>
    </div>
    <div class="container">
    <table border="1" cellpadding="5" class="table table-bordered table-secondary ">
        <tr>
            <th>ID</th>
            <th>FirstName</th>
            <th>LastName</th>
            <th>MobileNo</th>
            <th>Address</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${listStudent}" var="student">
        <tr>
            <td>${student.id}</td>
            <td>${student.firstName}</td>
            <td>${student.lastName}</td>
            <td>${student.mobileNo}</td>
            <td>${student.address}</td>
            <td>
                <button type="button" class="btn btn-info" onclick="window.location.href='edit?id=${student.id}'">Edit</button>
                &nbsp;&nbsp;&nbsp;
                <button type="button" class="btn btn-danger" onclick="window.location.href='delete?id=${student.id}'">Delete</button>
            </td>
        </tr>
        </c:forEach>
    </table>
    </div>
</div>  
</body>
</html>

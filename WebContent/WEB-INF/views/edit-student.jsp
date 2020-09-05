<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Student</title>
</head>
<body>
    <div align="center">
        <h2>Edit Student Details</h2>
        <form:form action="save" method="post" modelAttribute="student">
            <table border="0" cellpadding="5">
                <tr>
                    <td>ID: </td>
                    <td>${student.id}
                        <form:hidden path="id"/>
                    </td>
                </tr>        
                <tr>
                    <td>FirstName: </td>
                    <td><form:input path="firstName" /></td>
                </tr>
                <tr>
                    <td>LastName: </td>
                    <td><form:input path="lastName" /></td>
                </tr>
                <tr>
                    <td>MobileNo: </td>
                    <td><form:input path="mobileNo" /></td>
                </tr> 
                 <tr>
                    <td>Address: </td>
                    <td><form:input path="address" /></td>
                </tr>   
                <tr>
                    <td colspan="2"><input type="submit" value="Confirm"></td>
                </tr>                    
            </table>
        </form:form>
    </div>
</body>
</html>
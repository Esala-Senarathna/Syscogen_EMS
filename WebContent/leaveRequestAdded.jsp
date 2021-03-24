<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SyZcoGen EMS</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
  <body class="bg-light"><!-- BACKGROUND COLOR SETTED -->

    <!-- HEADER -->
    <center>
    <h1><b>SyZcoGen IT Solutions (Pvt.)Ltd.</b></h1><br>
    <h2>Employee Management system</h2>
    </center>
    <hr>
    <!-- HEADER end-->
    <center><h3>Your request is sent for approval</h3></center>
    <div class="container">
    <table >
    
    
    <c:forEach var="leaveDetailsArraylist" items="${leaveDetailsArraylist}">
	
		<!-- setting values -->
		<c:set var="id" value="${leaveDetailsArraylist.leaveId}"/>
		<c:set var="empId" value="${leaveDetailsArraylist.empid}"/>
		<c:set var="name" value="${leaveDetailsArraylist.name}"/>
		<c:set var="date_of_leave" value="${leaveDetailsArraylist.date_of_leave}"/>
		<c:set var="reason" value="${leaveDetailsArraylist.reason}"/>
	
    	<tr>
    		<td><b>Leave ID:</b></td>
    		<td>${leaveDetailsArraylist.leaveId}</td>
    	</tr>
    
    
    	<tr>
    		<td><b>Employee ID:</b></td>
    		<td>${leaveDetailsArraylist.empid}</td>
    	</tr>
    	
    	<tr>
    		<td><b>Name:</b></td>
    		<td>${leaveDetailsArraylist.name}</td>
    	</tr>
    	
    	<tr>
    		<td><b>Date of leave</b></td>
    		<td>${leaveDetailsArraylist.date_of_leave}</td>
    	</tr>
    	
    	<tr>
    		<td><b>Reason</b></td>
    		<td>${leaveDetailsArraylist.reason}</td>
    	</tr>
    </table>
   <!-- Delete button -->
    <form method="POST" action="DeleteLeaveRequestServlet">
		<input type="hidden" name="leaveRequestID" value="${leaveDetailsArraylist.leaveId}"/>
		<input type="submit" value= "Delete Leave Request" class="btn btn-primary" /> 
	</form>
    
	</c:forEach>
    <br>
    <c:url value="updateLeaveRequest.jsp" var="leaveRequestUpdate">
    	<c:param name="id" value="${id}"></c:param>
    	<c:param name="empId" value="${empId}"></c:param>
    	<c:param name="name" value="${name}"></c:param>
    	<c:param name="date_of_leave" value="${date_of_leave}"></c:param>
    	<c:param name="reason" value="${reason}"></c:param>
    </c:url>
    
    <a href="${leaveRequestUpdate}">
    <input type="button" class="btn btn-primary" name="update" value="edit details">
    </a>
    
	</div>
    <!-- FOOTER -->
    <hr>
    <!-- FOOTER end -->
  </body>
</html>
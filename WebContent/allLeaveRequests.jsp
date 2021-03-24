<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>SyZcoGen EMS</title>
</head>
<body style="background-color: #D3D3D3;"><!-- BACKGROUND COLOR SETTED -->

    <!-- HEADER -->
    <center>
    <h1><b>SyZcoGen IT Solutions (Pvt.)Ltd.</b></h1><br>
    <h2>Employee Management system</h2>
    </center>
    <hr>
    <!-- HEADER end -->
    <div class="container">
    <h3>Pending requests</h3>
    <table class="table table-hover">
    	<tr>
    		<th>Leave Request ID</th>
    		<th>Employee ID</th>
    		<th>Employee Name</th>
    		<th>Date of Leave</th>
    		<th>Reason</th>
    		<th>Action</th>
    	</tr>
    	
    	<c:forEach var="leaveDetailsArraylist" items="${leaveDetailsArraylist}">
	
		<!-- setting values -->
		<c:set var="id" value="${leaveDetailsArraylist.leaveId}"/>
		<c:set var="empId" value="${leaveDetailsArraylist.empid}"/>
		<c:set var="name" value="${leaveDetailsArraylist.name}"/>
		<c:set var="date_of_leave" value="${leaveDetailsArraylist.date_of_leave}"/>
		<c:set var="reason" value="${leaveDetailsArraylist.reason}"/>
    	
    	<tr>
    		<td>${leaveDetailsArraylist.leaveId}</td>
    		<td>${leaveDetailsArraylist.empid}</td>
    		<td>${leaveDetailsArraylist.name}</td>
    		<td>${leaveDetailsArraylist.date_of_leave}</td>
    		<td>${leaveDetailsArraylist.reason}</td>
    		<td>
    			<form method="POST" action="ManagerConfirmDirectingServlet">
					<input type="hidden" name="leaveid" value="${leaveDetailsArraylist.leaveId}"/>
					<input type="submit" value= "Select" class="btn btn-primary" /> 
				</form>
    		</td>
    	</tr>
    
    
    	</c:forEach>
    </table>
    	<center>
    	<form method="POST" action="GetConfirmedLeaveRequests">
			<input type="submit" value= "ViewConfirmed Leave Requests" class="btn btn-primary" /> 
		</form>
		</center>
	</div>
</body>
</html>
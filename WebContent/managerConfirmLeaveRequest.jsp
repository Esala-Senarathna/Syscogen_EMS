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

	<c:forEach var="leaveDetailsArraylist" items="${leaveDetailsArraylist}">
	
		<!-- setting values -->
		<c:set var="id" value="${leaveDetailsArraylist.leaveId}"/>
		<c:set var="empId" value="${leaveDetailsArraylist.empid}"/>
		<c:set var="name" value="${leaveDetailsArraylist.name}"/>
		<c:set var="date_of_leave" value="${leaveDetailsArraylist.date_of_leave}"/>
		<c:set var="reason" value="${leaveDetailsArraylist.reason}"/>
    <!-- FORM -->
      <form action="UpdateLeaveRequestByManagerServlet" method="post">
        <div class="form-group">
          <h3>Employee Leave Status</h3>

          <!-- Leave remaining count -->
          <label for="leavesReamaining">No of leaves remaining:</label>
          <label name="leavesReamaining"></label>
          <br>

		   <label><b>Leave id:</b></label>
          <input type="text" class="form-control" id="leaveid" value="${leaveDetailsArraylist.leaveId}" readonly name="leaveid">	
			
          <label><b>Employee id:</b></label>
          <input type="text" class="form-control" id="eid" value="${leaveDetailsArraylist.empid}" readonly name="eid">
        </div>


        <!-- Name -->
        <div class="form-group">
          <label><b>Name:</b></label>
          <input type="text" class="form-control" id="name" value="${leaveDetailsArraylist.name}" readonly name="name">
        </div>

        <!-- Date of leave -->
        <div class="form-group">
          <label><b>Date of leave:</b></label>
          <input type="text" class="form-control" id="dateOfLeave" value="${leaveDetailsArraylist.date_of_leave}" readonly name="dateOfLeave">
        </div>

        <!-- Reason -->
        <div class="form-group">
          <label><b>Reason:</b></label>
          <input type="text" class="form-control" id="reason" value="${leaveDetailsArraylist.reason}" readonly name="reason">
        </div>
        
        
        <div class="form-group">
          <label><b>Leave Status:</b></label>
          <select name="leaveStatus" class="form-control">
			 <option value="false"> Rejected</option>
 			 <option value="true">Confirmed</option>
		  </select>
        </div>
        
	</c:forEach>

        <!-- Submit button for leave Request -->
        <button type="submit" class="btn btn-primary">Done</button>
      </form>
      <!-- FORM end -->
    </div>

</body>
</html>
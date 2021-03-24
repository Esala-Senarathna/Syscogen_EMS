<%@page import="ems.model.LeaveRequestData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>SyZcoGen EMS</title>
</head>
<body class="bg-light"><!-- BACKGROUND COLOR SETTED -->

    <!-- HEADER -->
    <center>
    <h1><b>SyZcoGen IT Solutions (Pvt.)Ltd.</b></h1><br>
    <h2>Employee Management system</h2>
    </center>
    <hr>
    <!-- HEADER end -->
    <div class="container">

    <!-- FORM -->
      <form action="InsertLeaveRequestServlet" method="post">
        <div class="form-group">
          <h3>Leave Request Form</h3>

          <!-- Leave remaining count -->
          <label for="leavesReamaining">No of leaves remaining:</label>
          <label name="leavesReamaining"></label>
          <br>

          <label><b>Employee id:</b></label>
          <input type="text" class="form-control" id="eid" placeholder="Enter Employee id" name="eid">
        </div>


        <!-- Name -->
        <div class="form-group">
          <label><b>Name:</b></label>
          <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
        </div>

        <!-- Date of leave -->
        <div class="form-group">
          <label><b>Date of leave:</b></label>
          <input type="date" class="form-control" id="dateOfLeave" placeholder="Enter date of Leave" name="dateOfLeave">
        </div>

        <!-- Reason -->
        <div class="form-group">
          <label><b>Reason:</b></label>
          <input type="text" class="form-control" id="reason" placeholder="Enter reason" name="reason">
        </div>

        <!-- Submit button for leave Request -->
        <button type="submit" class="btn btn-primary">Submit Leave Request</button>
      </form>
      <!-- FORM end -->
    </div>
     <!-- JAVA implementation -->

    <!-- FOOTER -->
    <hr>
    <!-- FOOTER end -->

</body>
</html>
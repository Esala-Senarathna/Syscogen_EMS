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
    
    <%
    	String id = request.getParameter("id");
    	String empId = request.getParameter("empId");
    	String name = request.getParameter("name");
    	String date_of_leave = request.getParameter("date_of_leave");
    	String reason = request.getParameter("reason");
    
    %>
    
    
    <!-- HEADER end -->
    <div class="container">

    <!-- FORM -->
      <form action="UpdateLeaveRequestServlet" method="post">
        <div class="form-group">
          <h3> Update Leave Request Form</h3>

          <!-- Leave remaining count -->
          <label for="leavesReamaining">No of leaves remaining:</label>
          <label name="leavesReamaining"></label>
          <br>
          
          <label><b>Leave id:</b></label>
          <input type="text" class="form-control" id="leaveid" name="leaveid" value="<%=id%>" readonly><br>

          <label><b>Employee id:</b></label>
          <input type="text" class="form-control" id="eid" name="eid" value="<%=empId%>">
        </div>


        <!-- Name -->
        <div class="form-group">
          <label><b>Name:</b></label>
          <input type="text" class="form-control" id="name" name="name" value="<%=name%>">
        </div>

        <!-- Date of leave -->
        <div class="form-group">
          <label><b>Date of leave:</b></label>
          <input type="date" class="form-control" id="dateOfLeave" name="dateOfLeave" value="<%=date_of_leave%>">
        </div>

        <!-- Reason -->
        <div class="form-group">
          <label><b>Reason:</b></label>
          <input type="text" class="form-control" id="reason" name="reason" value="<%=reason%>">
        </div>

        <!-- Submit button for leave Request -->
        <button type="submit" class="btn btn-primary">Update Leave Request</button>
      </form>
      <!-- FORM end --> 
   
    </div>

    <!-- FOOTER -->
    <hr>
    <!-- FOOTER end -->
  </body>
</html>

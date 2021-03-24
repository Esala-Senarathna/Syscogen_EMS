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
     <form method="POST" action="GetLeaveRequestsServlet">
		<input type="submit" value= "View Leave Requests" class="btn btn-primary" /> 
	</form>
	
	<form method="POST" action="GetConfirmedLeaveRequests">
		<input type="submit" value= "Confirmed Leave Requests" class="btn btn-primary" /> 
	</form>
    
</body>
</html>
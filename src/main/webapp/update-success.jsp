
<%@page import="com.abhi.EmployeeService"%>
<%@page import="java.sql.*"%>
<%@include file="menu.jsp" %>

<html>
	<head>
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	 </head> 
	 
	 <body>
	 <%
	 
	 EmployeeService.update(request);
	 	 
	%>
	<div  class="d-flex justify-content-center align-items-center m-10">
	<h1 style="color: green;"> Record with Id no: <%= request.getParameter("eid") %> Updated Successfully!  </h1>
	</div>
	 
	
	 	
	
	
	
	
	
	</body>
</html>
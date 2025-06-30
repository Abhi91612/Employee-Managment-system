
<%@page import="com.abhi.EmployeeService"%>
<%@include file="menu.jsp" %>

<html>
	<head>
	
	 </head> 
	<%
	EmployeeService.saveEmployee(request);
	%>
	<div  style="color: green; display:flex; justify-content:center; padding-top:20px ">
		<h1>Record has been Inserted successfully</h1>
	</div>
	
	</body>
</html>
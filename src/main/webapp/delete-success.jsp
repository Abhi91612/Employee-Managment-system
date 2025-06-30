<%@page import="com.abhi.EmployeeService"%>
<%@page import="java.net.http.HttpClient.Redirect"%>

<%@include file="menu.jsp" %>

<html>
	<head>
	
	 </head> 
	 
	 <body>
	<% int eid=Integer.parseInt(request.getParameter("eid"));
		EmployeeService.deleteRecord(eid);
	 %>
	<div style="color: green; display:flex; justify-content:center; padding-top:20px ">
	<h1  > Record with Id no: <%=request.getParameter("eid") %> Deleted Successfully!  </h1>
	</div>
	
	</body>
</html>
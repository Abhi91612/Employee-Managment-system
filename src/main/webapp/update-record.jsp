 <%@page import="com.abhi.Employee"%>
<%@page import="com.abhi.EmployeeService"%>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Update Employee Record</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<%


  Employee emp=EmployeeService.getRecord(request);
if (emp!=null) {
%>
<%@ include file="menu.jsp" %>
<div class="container mt-5">
  <h2 class="text-center text-primary mb-4">Update Employee Record</h2>
  <form action="update-success.jsp" method="post" class="border rounded p-4 bg-white shadow-sm">
    <h4 class="text-center text-secondry mb-2">Detail Of Employee Id no: <%= request.getParameter("eid") %></h4> <br>
    <!-- Hidden   ID -->
    <input type="hidden" name="eid" value="<%= emp.getEid() %>">

    <div class="row mb-3">
      <div class="col-md-6">
        <label class="form-label fw-bold">First Name</label>
        <input type="text" name="firstname" class="form-control" value="<%= emp.getFirstname() %>" required>
      </div>
      <div class="col-md-6">
        <label class="form-label fw-bold">Last Name</label>
        <input type="text" name="lastname" class="form-control" value="<%= emp.getLastname() %>" required>
      </div>
    </div>

    <div class="row mb-3">
      <div class="col-md-6">
        <label class="form-label fw-bold">Phone</label>
        <input type="text" name="phone" class="form-control" value="<%= emp.getPhone() %>" required>
      </div>
      <div class="col-md-6">
        <label class="form-label fw-bold">Email</label>
        <input type="email" name="email" class="form-control" value="<%= emp.getEmail() %>" required>
      </div>
    </div>

    <div class="row mb-3">
      <div class="col-md-6">
        <label class="form-label fw-bold">Department</label>
        <input type="text" name="department" class="form-control" value="<%= emp.getDepartment()%>" required>
      </div>
      <div class="col-md-6">
        <label class="form-label fw-bold">Salary</label>
        <input type="text" name="salary" class="form-control" value="<%= emp.getSalary() %>" required>
      </div>
    </div>

    <div class="text-end mt-4">
      <button type="submit" class="btn btn-success fw-bold">Update Record</button>
    </div>
  </form>
</div>

<%
} else {
%>
<jsp:include page="update-input.jsp"/>
<div class="container mt-5">
  <div class="alert alert-danger text-center">
    <h4>No record found with ID: <%= request.getParameter("eid") %></h4>
  </div>
</div>
<%
}
%>

</body>
</html>

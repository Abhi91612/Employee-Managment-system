<!DOCTYPE html>
<%@page import="java.sql.PreparedStatement"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Bootstrap Table Input</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">



</head>
<body class="bg-light">

<div class="container mt-5">
  <div class="card shadow border rounded">
    <div class="card-body">
      <h5 class="card-title text-center mb-4">Employee Info</h5>
      <form>
        <table class="table table-bordered text-center align-middle">
          <thead class="table-dark">
            <tr>
              <th>E.Id</th>
              <th>First Name</th>
              <th>Last Name</th>
              <th>Phone</th>
              <th>Email</th>
              <th>Department</th>
              <th>Salary</th>
            </tr>
          </thead>
          <tbody>
          <%
          PreparedStatement ps=(PreparedStatement)application.getAttribute("update");
          ps.setString(1, request.getParameter("name"));
     	  ps.setString(2, request.getParameter("brand"));
          %>
          
          
            <tr>
              <td><input type="text"  class="form-control form-control-sm" name="eid" value="" ></td>
              <td><input type="text" class="form-control form-control-sm" name="firstName"></td>
              <td><input type="text" class="form-control form-control-sm" name="lastName"></td>
              <td><input type="text" class="form-control form-control-sm" name="phone"></td>
              <td><input type="email" class="form-control form-control-sm" name="email"></td>
              <td><input type="text" class="form-control form-control-sm" name="department"></td>
              <td><input type="text" class="form-control form-control-sm" name="salary"></td>
            </tr>
            <tr>
              <td colspan="7">
                <button type="submit" class="btn btn-primary w-25">Edit</button>
              </td>
            </tr>
          </tbody>
        </table>
      </form>
    </div>
  </div>
</div>

</body>
</html>

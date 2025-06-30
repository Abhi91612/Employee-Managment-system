<%@ page import="java.sql.*" %>
<%@ include file="menu.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Search Record</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">
  <h2 class="text-center text-primary mb-4">Search Employee Record</h2>

  <form action="search-record.jsp" method="post" class="border rounded p-4 bg-white shadow-sm col-md-6 mx-auto">
    <div class="mb-3">
      <label for="id" class="form-label fw-bold">Enter the ID No:</label>
      <input type="number" name="eid" id="id" class="form-control" required>
    </div>
    <div class="text-end">
      <button type="submit" class="btn btn-info text-white fw-bold">Search Record</button>
    </div>
  </form>
</div>

</body>
</html>

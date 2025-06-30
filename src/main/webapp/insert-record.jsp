<%@ include file="menu.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- <link ref="stylesheet" href="CSS/style.css"/>  -->
  <meta charset="UTF-8">
  <title>Insert Product</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  
  <style type="text/css">
  .form-heading {
      color: gray;
      text-align: center;
      padding-top: 20px;
    }
    .card-custom {
      border: 2px solid #ff9800;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    .btn-orange {
      background-color: #ff9800;
      border: none;
      color: white;
    }
    .btn-orange:hover {
      background-color: #e68900;
    }
  </style>
</head>
<body class="bg-light">

  <h2 class="form-heading">Fill Out this Form to Insert Product Record</h2>

  <div class="container mt-4">
    <div class="card card-custom mx-auto" style="max-width: 800px;">
      <div class="card-body">
        <form action="save-record.jsp">
          <div class="row g-3">
            <div class="col-md-6">
              <label class="form-label">Employee ID:</label>
              <input type="text" name="eid" class="form-control form-control-sm" required>
            </div>

            <div class="col-md-6">
              <label class="form-label">Employee First Name:</label>
              <input type="text" name="firstname" class="form-control form-control-sm" required>
            </div>

            <div class="col-md-6">
              <label class="form-label">Employee Last Name:</label>
              <input type="text" name="lastname" class="form-control form-control-sm" required>
            </div>

         <div class="col-md-6">
            <label class="form-label">Phone:</label>
              <input type="text" name="phone" class="form-control form-control-sm" required>
            </div>

            <div class="col-md-6">
              <label class="form-label">Email</label>
              <input type="text" name="email" class="form-control form-control-sm" required>
            </div>

            <div class="col-md-6">
              <label class="form-label">Department:</label>
              <input type="text" name="department" class="form-control form-control-sm" required>
            </div>

            <div class="col-md-6">
              <label class="form-label">Salary:</label>
              <input type="text" name="salary" class="form-control form-control-sm" required>
            </div>
          </div>

          <div class="d-grid gap-2 mt-4">
            <button type="submit" class="btn btn-orange">Save Record</button>
          </div>
        </form>
      </div>
    </div>
  </div>

</body>
</html>

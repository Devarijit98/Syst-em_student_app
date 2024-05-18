<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>New Registration</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            text-align: center;
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }
        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            display: inline-block;
        }
        h2 {
            margin-bottom: 20px;
        }
        .form-group {
            text-align: left;
        }
        .form-group input {
            width: 100%;
        }
        .btn-container {
            margin-top: 20px;
        }
        .btn-container .btn {
            margin: 10px;
        }
    </style>
</head>
<body>
        <div class="btn-container">
            <a href="create" class="btn btn-primary">New Registration</a>
            <a href="read" class="btn btn-primary">Show Registrations</a>
        </div>
    <div class="form-container">
        <h2>Welcome to New Registration Page</h2>
        <form action="create" method="post">
            <input type="hidden" name="studentId" value="0">
            <div class="form-group">
                <label for="studentName">Name</label>
                <input type="text" class="form-control" id="studentName" name="studentName" placeholder="Enter Your Name" required>
            </div>
            <div class="form-group">
                <label for="studentMobile">Mobile</label>
                <input type="text" class="form-control" id="studentMobile" name="studentMobile" placeholder="Enter Mobile number" required>
            </div>
            <div class="form-group">
                <label for="studentEmail">Email</label>
                <input type="email" class="form-control" id="studentEmail" name="studentEmail" placeholder="Enter Username here" required>
            </div>
            <div class="form-group">
                <label for="studentAddress">Address</label>
                <input type="text" class="form-control" id="studentAddress" name="studentAddress" placeholder="Enter Address here" required>
            </div>
            <div class="form-group">
                <label for="studentCourse">Course</label>
                <input type="text" class="form-control" id="studentCourse" name="studentCourse" placeholder="Enter Course details" required>
            </div>
            <div class="form-group">
                <label for="studentFee">Fee</label>
                <input type="text" class="form-control" id="studentFee" name="studentFee" placeholder="Enter Fee Amount" required>
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
        <%
        if (request.getAttribute("msg") != null) {
        %>
        <div class="alert alert-info mt-3">
            <%=request.getAttribute("msg")%>
        </div>
        <%
        }
        %>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

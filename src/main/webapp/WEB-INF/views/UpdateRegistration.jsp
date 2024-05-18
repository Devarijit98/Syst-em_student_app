<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Registration</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
        }
        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            max-width: 600px;
        }
        .form-container h2 {
            margin-bottom: 20px;
        }
        .form-container .form-group {
            margin-bottom: 15px;
        }
        .form-container input[type="submit"] {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Welcome to Update Registration Page</h2>
        <form action="update" method="post">
            <div class="form-group">
                <label for="studentName">Name</label>
                <input type="text" class="form-control" id="studentName" name="studentName" value="<%= request.getAttribute("studentName")%>" placeholder="Enter your Name" />
            </div>
            <div class="form-group">
                <label for="studentMobile">Mobile</label>
                <input type="text" class="form-control" id="studentMobile" name="studentMobile" value="<%= request.getAttribute("studentMobile")%>" placeholder="Enter Mobile number" />
            </div>
            <div class="form-group">
                <label for="studentEmail">Email</label>
                <input type="email" class="form-control" id="studentEmail" name="studentEmail" value="<%= request.getAttribute("studentEmail")%>" placeholder="Enter Email Id here" />
            </div>
            <div class="form-group">
                <label for="studentAddress">Address</label>
                <input type="text" class="form-control" id="studentAddress" name="studentAddress" value="<%= request.getAttribute("studentAddress")%>" placeholder="Enter City details" />
            </div>
            <div class="form-group">
                <label for="studentCourse">Course</label>
                <input type="text" class="form-control" id="studentCourse" name="studentCourse" value="<%= request.getAttribute("studentCourse")%>" placeholder="Enter Course details" />
            </div>
            <div class="form-group">
                <label for="studentFee">Fee</label>
                <input type="text" class="form-control" id="studentFee" name="studentFee" value="<%= request.getAttribute("studentFee")%>" placeholder="Enter Fee here" />
            </div>
            <input type="submit" class="btn btn-primary" value="Update" />
        </form>
        <%
        if (request.getAttribute("msg") != null) {
        %>
        <div class="alert alert-info mt-3">
            <%= request.getAttribute("msg")%>
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

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Sign Up</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-container h2 {
            margin-bottom: 20px;
        }

        .toggle-password {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Welcome to Signup Page</h2>
        <form action="signUp" method="post">
            <div class="form-group">
                <label for="name"><b>Name</b></label>
                <input type="text" class="form-control" id="name" name="studentName" required placeholder="Enter name here">
            </div>
            <div class="form-group">
                <label for="email"><b>Username</b></label>
                <input type="email" class="form-control" id="email" name="studentEmail" required placeholder="Enter email here">
            </div>
            <div class="form-group">
                <label for="password"><b>Password</b></label>
                <div class="input-group">
                    <input type="password" class="form-control" id="passwordField" name="studentPassword" required placeholder="Enter password here">
                    <div class="input-group-append">
                        <span class="input-group-text toggle-password" onclick="togglePasswordVisibility()">
                            <i class="far fa-eye"></i>
                        </span>
                    </div>
                </div>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Register</button>
            <a href="index.jsp" class="btn btn-secondary btn-block">Home</a>
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

    <script>
        function togglePasswordVisibility() {
            const passwordField = document.getElementById('passwordField');
            const passwordToggle = document.querySelector('.toggle-password i');
            if (passwordField.type === 'password') {
                passwordField.type = 'text';
                passwordToggle.classList.remove('fa-eye');
                passwordToggle.classList.add('fa-eye-slash');
            } else {
                passwordField.type = 'password';
                passwordToggle.classList.remove('fa-eye-slash');
                passwordToggle.classList.add('fa-eye');
            }
        }
    </script>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

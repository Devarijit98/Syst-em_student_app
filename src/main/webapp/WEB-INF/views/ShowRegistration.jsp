<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Show Registration</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            text-align: center;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .container {
            margin-top: 20px;
        }
        table {
            border-collapse: separate;
            border-spacing: 0;
            width: 100%;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .btn {
            margin: 5px;
        }
        .btn-container {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>All Student List</h2>
        <div class="btn-container">
            <a href="create" class="btn btn-primary">New Registration</a>
            <a href="read" class="btn btn-primary">Show Registrations</a>
        </div>
        <table class="table table-bordered">
            <thead class="thead-light">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Mobile</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Course</th>
                    <th>Fee</th>
                    <th colspan="2">Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                ResultSet data = (ResultSet) request.getAttribute("data");
                while (data.next()) {
                %>
                <tr>
                    <td><%=data.getString(1)%></td>
                    <td><%=data.getString(2)%></td>
                    <td><%=data.getString(3)%></td>
                    <td><%=data.getString(4)%></td>
                    <td><%=data.getString(5)%></td>
                    <td><%=data.getString(6)%></td>
                    <td><%=data.getString(7)%></td>
                    <td>
                        <a href="delete?studentEmail=<%=data.getString(4)%>" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                    <td>
                        <a href="update?studentEmail=<%=data.getString(4)%>&studentName=<%=data.getString(2)%>&studentMobile=<%=data.getString(3)%>&studentAddress=<%=data.getString(5)%>&studentCourse=<%=data.getString(6)%>&studentFee=<%=data.getString(7)%>" class="btn btn-warning btn-sm">Update</a>
                    </td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
        <a href="logout" class="btn btn-secondary">Logout</a>
        <br>
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

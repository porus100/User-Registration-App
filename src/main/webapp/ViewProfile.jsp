<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="test.UserBean" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Profile</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        body {
            background-color: #f0f0f0; /* Light grey background */
            font-family: Arial, sans-serif;
            color: #333; /* Dark grey text */
        }
        .card {
            background-color: #ffffff; /* White card background */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Slight shadow for depth */
        }
        .card-header {
            background-color: #333; /* Dark grey for header */
            border-top-left-radius: 10px; /* Rounded corners for top-left */
            border-top-right-radius: 10px; /* Rounded corners for top-right */
            color: #fff; /* White text */
        }
        .card-footer {
            background-color: #e0e0e0; /* Light grey for footer */
            border-bottom-left-radius: 10px; /* Rounded corners for bottom-left */
            border-bottom-right-radius: 10px; /* Rounded corners for bottom-right */
            color: #333; /* Dark grey text */
        }
        .profile-header {
            background-color: #; /* Glossy grey background */
            color: #000; /* Black text */
            padding: 15px;
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Slight shadow */
        }
        th {
            background-color: #e0e0e0; /* Medium grey for table headers */
        }
        td {
            color: #333; /* Dark grey for table data */
        }
    </style>
</head>
<body class="container mt-5">
<%
UserBean ub = (UserBean) application.getAttribute("ubean");
%>

    <div class="text-center">
        <h2 class="profile-header">User Profile</h2>
    </div>

    <div class="card mx-auto" style="width: 50%;">
        <div class="card-header text-white text-center">
            <h4>Welcome, <b><%= ub.getfName() %></b></h4>
        </div>

        <table class="table table-bordered table-hover mb-0">
            <tr>
                <th>First Name</th>
                <td><%= ub.getfName() %></td>
            </tr>
            <tr>
                <th>Last Name</th>
                <td><%= ub.getlName() %></td>
            </tr>
            <tr>
                <th>City</th>
                <td><%= ub.getCity() %></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><%= ub.getmId() %></td>
            </tr>
            <tr>
                <th>Phone Number</th>
                <td><%= ub.getPhno() %></td>
            </tr>
        </table>

        <div class="card-footer text-center">
            <a href="edit" class="btn btn-outline-light me">Edit Profile</a>
            <a href="logout" class="btn btn-outline-light">Logout</a>
        </div>
    </div>
</body>
</html>

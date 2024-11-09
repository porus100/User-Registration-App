<%@page import="test.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Welcome Page</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        body {
            background-color: #f5f5f5; /* Very light grey background */
            font-family: Arial, sans-serif;
            color: #333;
        }
        #frm {
            width: 500px;
            margin: auto;
            margin-top: 100px;
            background-color: #ffffff; /* White form background */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Slight shadow for depth */
        }
        .card-header {
            background-color: #333; /* Dark grey for header */
            border-top-left-radius: 10px; /* Rounded corners for top-left */
            border-top-right-radius: 10px; /* Rounded corners for top-right */
            color: #fff; /* White text */
        }
        .card-body {
            padding: 20px; /* Add padding to the body */
        }
        .btn-outline-primary, .btn-outline-danger {
            color: #333; /* Dark grey for button text */
            border-color: #333; /* Dark grey border */
            transition: transform 0.2s, box-shadow 0.2s; /* Smooth transition for effects */
        }
        .btn-outline-primary:hover, .btn-outline-danger:hover {
            background-color: #f0f0f0; /* Very light grey background on hover */
            color: #333; /* Dark grey text on hover */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Slight shadow on hover */
            transform: translateY(-3px); /* Slight lift effect */
        }
        .card-footer {
            background-color: #ffffff; /* Change footer background to white */
            border-bottom-left-radius: 10px; /* Rounded corners for bottom-left */
            border-bottom-right-radius: 10px; /* Rounded corners for bottom-right */
            text-align: center; /* Center align the footer content */
            padding: 10px; /* Add padding to the footer */
        }
    </style>
</head>
<body class="container-fluid">
    <div id="frm" class="form card">
        <h2 class="card-header">Welcome</h2>
        <div class="card-body">
            <%
            UserBean ub = (UserBean) application.getAttribute("ubean");
            out.println("<b>Welcome User:</b><b> " + ub.getfName() + "</b><br>");
            %>
        </div>
        <div class="card-footer">
            <a href="view" class="btn btn-outline-primary">View Profile</a>
            <a href="logout" class="btn btn-outline-danger">Log Out</a>
        </div>
    </div>
</body>
</html>

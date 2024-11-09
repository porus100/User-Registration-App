<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Logout Page</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        body {
            background-color: #f5f5f5; /* Very light grey background */
            font-family: Arial, sans-serif;
            color: #333;
        }
        .container {
            margin-top: 50px;
        }
        .card {
            background-color: #ffffff; /* White card background */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Slight shadow for depth */
            padding: 20px;
            text-align: center;
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
    </style>
</head>
<body class="container">
    <div class="card">
        <h2 class="card-header">Logout</h2>
        <div class="card-body">
            <%
            out.println("User Logged out Successfully...<br>");
            %>
        </div>
        <div class="card-footer">
            <a href="login.html" class="btn btn-outline-primary">Login Again</a>
        </div>
    </div>
</body>
</html>

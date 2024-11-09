<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Page</title>
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
        }
        .card-header {
            background-color: #333; /* Dark grey for header */
            border-top-left-radius: 10px; /* Rounded corners for top-left */
            border-top-right-radius: 10px; /* Rounded corners for top-right */
            color: #fff; /* White text */
        }
        .card-footer {
            background-color: #f5f5f5; /* Match background of page */
            border-bottom-left-radius: 10px; /* Rounded corners for bottom-left */
            border-bottom-right-radius: 10px; /* Rounded corners for bottom-right */
            text-align: center; /* Center align the footer content */
            padding: 10px; /* Add padding to the footer */
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
        .lead {
            font-size: 1.25rem;
        }
    </style>
</head>
<body class="container">
    <div class="card">
        <h2 class="card-header">Welcome</h2>
        <div class="card-body">
            <%
            String fName = (String) request.getAttribute("fname");
            String msg = (String) request.getAttribute("msg");
            out.println("<p class='lead'><b>Page belongs to User: </b>" + fName + "</p>");
            out.println("<p>" + msg + "</p>");
            %>
        </div>
        <div class="card-footer">
            <a href="view" class="btn btn-outline-primary">View Profile</a>
            <a href="logout" class="btn btn-outline-danger">Logout</a>
        </div>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="test.UserBean" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Profile Update</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        body {
            background-color: #f5f5f5; /* Very light grey background */
            font-family: Arial, sans-serif;
            color: #333;
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
            background-color: #333; /* Dark grey for footer */
            border-bottom-left-radius: 10px; /* Rounded corners for bottom-left */
            border-bottom-right-radius: 10px; /* Rounded corners for bottom-right */
            color: #fff; /* White text */
        }
        .profile-header {
            background-color: #e0e0e0; /* Glossy grey background */
            color: #000; /* Black text */
            padding: 15px;
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Slight shadow */
        }
        .form-label {
            font-weight: bold; /* Bold labels */
            color: #333; /* Dark grey for labels */
        }
        .form-control {
            background-color: #e0e0e0; /* Light grey for input background */
            border: 1px solid #ccc; /* Light border */
            border-radius: 5px; /* Slightly rounded corners */
        }
        .btn-success {
            background-color: #555; /* Dark grey for button background */
            border-color: #555; /* Dark grey for button border */
        }
        .btn-success:hover {
            background-color: #777; /* Slightly lighter grey on hover */
            border-color: #777; /* Slightly lighter grey on hover */
        }
        .btn-outline-danger {
            color: #555; /* Dark grey for button text */
            border-color: #555; /* Dark grey for button border */
        }
        .btn-outline-danger:hover {
            background-color: #555; /* Dark grey background on hover */
            color: #fff; /* White text on hover */
        }
    </style>
</head>
<body class="container mt-5">
<%
    String fName = (String) request.getAttribute("fname");
    UserBean ub = (UserBean) application.getAttribute("ubean");
%>

    <div class="text-center mb-4">
        <h2 class="profile-header">User Profile Update</h2>
    </div>

    <div class="card mx-auto shadow-lg" style="max-width: 600px;">
        <div class="card-header text-white text-center">
            <h4>Update Your Profile Information</h4>
        </div>
        
        <div class="card-body p-4">
            <form action="update" method="post">
                <div class="row mb-3">
                    <div class="col-md-4 text-end">
                        <label for="city" class="form-label"><strong>City</strong></label>
                    </div>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="city" name="city" value="<%= ub.getCity() %>" placeholder="Enter your city">
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-4 text-end">
                        <label for="mid" class="form-label"><strong>Email</strong></label>
                    </div>
                    <div class="col-md-8">
                        <input type="email" class="form-control" id="mid" name="mid" value="<%= ub.getmId() %>" placeholder="Enter your email">
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-4 text-end">
                        <label for="phno" class="form-label"><strong>Phone Number</strong></label>
                    </div>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="phno" name="phno" value="<%= ub.getPhno() %>" placeholder="Enter your phone number">
                    </div>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-success px-4">Update Profile</button>
                </div>
            </form>
        </div>

        <div class="card-footer text-center bg-light">
            <a href="logout" class="btn btn-outline-danger px-4">Logout</a>
        </div>
    </div>
</body>
</html>

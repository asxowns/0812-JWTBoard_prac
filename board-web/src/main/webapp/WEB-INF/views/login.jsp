<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

 <h2>Login</h2>
    <form id="loginForm">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Login">
    </form>

    <script>
        $(document).ready(function() {
        	$("#loginForm").submit(function(event) {
        	       event.preventDefault();
        	       var formData = {
        	           username: $("#username").val(),
        	           password: $("#password").val()
        	       };

        	       $.ajax({
        	           type: "POST",
        	           contentType: "application/json",
        	           url: "http://localhost:9001/api/auth/login",
        	           data: JSON.stringify(formData),
        	           dataType: 'json',
        	           success: function(result) {
        	               alert("Login successful!");
        	               localStorage.setItem("jwt", result.token);
        	               window.location.href = "/"; // Redirect to dashboard or home page
        	           },
        	           error: function(xhr, status, error) {
        	               console.log(xhr.responseText);
        	               alert("Error: " + (xhr.responseJSON ? xhr.responseJSON.message : error));
        	           }
        	       });
        	   });
        });
    </script>

</body>
</html>
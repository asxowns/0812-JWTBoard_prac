<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp Page</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

<h2>Sign Up</h2>
    <form id="signupForm">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Sign Up">
    </form>

    <script>
        $(document).ready(function() {
            $("#signupForm").submit(function(event) {
                event.preventDefault();
                var formData = {
                    username: $("#username").val(),
                    password: $("#password").val()
                };

                $.ajax({
                    type: "POST",
                    contentType: "application/json",
                    url: "http://localhost:9001/api/auth/signup",
                    data: JSON.stringify(formData),
                    dataType: 'json',
                    success: function(result) {
                        alert("Sign up successful!");
                        window.location.href = "/login";
                    },
                    error: function(xhr, status, error) {
                    	var errorMessage = xhr.responseJSON ? xhr.responseJSON.message : "An error occurred";
                    	alert("Error: " + errorMessage);
                    }
                });
            });
        });
    </script>

</body>
</html>
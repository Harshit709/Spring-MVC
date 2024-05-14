<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('https://source.unsplash.com/1600x900/?nature');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 50px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            color: #333;
            font-weight: bold;
        }
        input[type="text"],
        input[type="password"],
        input[type="number"] {
            border-radius: 5px;
        }
        button[type="submit"] {
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            color: white;
            padding: 10px 20px;
            margin-top: 10px;
            cursor: pointer;
        }
        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>User Form</h2>
    <form action="signup" method="post">
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="password" required="required">
        </div>
        <div class="form-group">
            <label for="userName">Username:</label>
            <input type="text" class="form-control" id="userName" name="userName" required="required">
        </div>

        <div class="form-group">
            <label for="fatherName">Father's Name:</label>
            <input type="text" class="form-control" id="fatherName" name="fatherName" required="required">
        </div>
        <div class="form-group">
            <label for="age">Age:</label>
            <input type="number" class="form-control" id="age" name="age" required="required">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>

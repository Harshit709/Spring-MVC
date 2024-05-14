<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page - Our E-Commerce Store</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('https://source.unsplash.com/1600x900/?ecommerce');
            background-color: #f8f9fa; /* Light gray background color */
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-form {
            width: 350px;
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
        }
        .login-form h2 {
            margin-bottom: 30px;
            color: #007bff; /* Blue color for headings */
            text-align: center;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-control {
            border-radius: 20px;
        }
        .btn-primary {
            border-radius: 20px;
            background-color: #007bff; /* Blue color for primary button */
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3; /* Darker shade of blue on hover */
        }
        .form-check-label {
            color: #666; /* Gray color for checkbox label */
        }
        .float-right {
            color: #007bff; /* Blue color for Forgot Password link */
        }
    </style>
</head>
<body>

<div class="login-form">
    <h2>Login</h2>
    <form action="login" method="post">
        <div class="form-group">
            <input type="text" class="form-control" name="username" placeholder="Username" required="required">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Password" required="required">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Log in</button>
        </div>
        <div class="clearfix">
            <label class="float-left form-check-label"><input type="checkbox"> Remember me</label>
            <a href="#" class="float-right">Forgot Password?</a>
        </div>
    </form>
</div>

</body>
</html>

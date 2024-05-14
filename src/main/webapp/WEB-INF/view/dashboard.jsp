<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Change font if desired */
            color: #333; /* Text color */
            margin: 0;
            padding: 0;
            line-height: 1.6;
            background-image: url('https://source.unsplash.com/1600x900/?ecommerce'); /* Background image */
            background-size: cover;
            background-position: center;
        }
        .container {
            margin-top: 50px;
            text-align: center;
        }
        .navbar {
            background-color: #343a40; /* Dark gray navbar background color */
        }
        .navbar-brand, .navbar-nav .nav-link {
            color: #fff; /* Navbar text color */
        }
        .navbar-brand:hover, .navbar-nav .nav-link:hover {
            color: #e9ecef; /* Navbar text color on hover */
        }
        .jumbotron {
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black background for jumbotron */
            color: #fff; /* Text color on jumbotron */
            padding: 100px 0;
            margin-bottom: 0;
            text-align: center;
        }
        .jumbotron h1 {
            font-size: 48px; /* Heading font size */
            font-weight: bold;
            margin-bottom: 30px;
            color: black; /* Welcome message color */
            background-color: rgba(255, 255, 0, 0.5); /* Yellow highlight */
            padding: 10px; /* Add padding for better visibility */
            border-radius: 10px; /* Add border radius for rounded corners */
        }
        .jumbotron p {
            font-size: 20px; /* Paragraph font size */
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">Spring MVC</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="home">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="login">Sign In</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="aboutus">About Us</a>
            </li>
             <li class="nav-item">
                            <a class="nav-link" href="signup">Sign Up</a>
                 </li>
        </ul>
    </div>
</nav>
<div class="jumbotron">
    <div class="container">
        <h1>Welcome to the Dashboard, <span style="color: yellow; font-weight: bold;">${userName.password}</span>!</h1>
        <p>You are now ready to explore our e-commerce platform.</p>
    </div>
</div>

</body>
</html>

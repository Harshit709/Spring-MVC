<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa; /* Light gray background */
            color: #333; /* Text color */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .error-container {
            text-align: center;
        }
        h1 {
            color: #dc3545; /* Red color for heading */
            margin-bottom: 20px;
        }
        p {
            color: #dc3545; /* Red color for error message */
            margin-bottom: 30px;
        }
        a {
            color: #007bff; /* Blue color for link */
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>Error</h1>
        <p>${errorMessage}</p>
        <p>Please <a href="signup">click here</a> to go back to the signup page.</p>
    </div>
</body>
</html>

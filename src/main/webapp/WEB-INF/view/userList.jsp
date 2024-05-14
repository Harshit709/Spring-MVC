<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa; /* Light gray background color */
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #007bff; /* Blue color for headings */
            margin-bottom: 20px;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ddd; /* Add border to the table */
        }
        th, td {
            padding: 12px; /* Increased padding for better spacing */
            text-align: left;
        }
        th {
            background-color: #007bff; /* Blue color for table headers */
            color: #fff; /* White color for text in table headers */
        }
        tr:nth-child(even) {
            background-color: #f2f2f2; /* Light gray background for even rows */
        }
        tr:hover {
            background-color: #e2e2e2; /* Slightly darker gray on hover */
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff; /* Blue color for button */
            color: #fff; /* White color for button text */
            text-decoration: none; /* Remove default underline */
            border-radius: 5px;
            transition: background-color 0.3s; /* Smooth transition on hover */
        }
        .btn:hover {
            background-color: #0056b3; /* Darker shade of blue on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User List</h2>
        <table>
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>User Name</th>
                    <th>Father Name</th>
                    <th>Age</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td><c:out value="${user.userId}"/></td>
                        <td>${user.userName}</td>
                        <td>${user.fatherName}</td>
                        <td>${user.age}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <p style="text-align: center;"><a href="dashboard" class="btn">Go to Dashboard</a></p>
    </div>
</body>
</html>

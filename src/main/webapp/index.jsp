<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Marks Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        
        h1 {
            text-align: center;
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            margin: 0;
        }
        
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            background-color: #333;
        }
        
        li {
            margin: 0;
        }
        
        li a {
            display: block;
            color: white;
            text-decoration: none;
            padding: 14px 20px;
            transition: background-color 0.3s;
        }
        
        li a:hover {
            background-color: #111;
        }
        
        li a:active {
            background-color: #4CAF50;
        }
    </style>
</head>
<body>
    <h1>Mark Management System</h1>
    <ul>
        <li><a href="markadd.jsp">Add Marks</a></li>
        <li><a href="markupdate.jsp">Update Marks</a></li>
        <li><a href="markdelete.jsp">Delete Marks</a></li>
        <li><a href="markdisplay.jsp">Display Marks</a></li>
        <li><a href="reports.jsp">Reports</a></li>
    </ul>
</body>
</html>

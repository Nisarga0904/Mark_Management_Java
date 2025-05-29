<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.StudentMark" %>
<%@ page import="dao.MarkDAO" %>
<%
    MarkDAO markDAO = new MarkDAO();
    List<StudentMark> marksList = markDAO.displayMarks();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Display Student Marks</title>
    <!-- Font Awesome CDN for icons -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9; /* corrected white background */
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            background-color: #4CAF50; /* green header */
            color: white;
            padding: 20px;
            margin: 0;
            font-weight: bold;
            letter-spacing: 1px;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 30px auto;
            background: #f9fff9; /* very light greenish white */
            box-shadow: 0 0 10px rgba(76, 175, 80, 0.2); /* subtle green shadow */
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #c8e6c9; /* light green border */
            color: #2e7d32; /* dark green text */
            font-weight: 600;
        }

        th {
            background-color: #81c784; /* lighter green for header */
            color: white;
            text-transform: uppercase;
            font-size: 14px;
        }

        tr:hover {
            background-color: #dcedc8; /* light green hover */
        }

        a {
            color: #4CAF50; /* green link */
            font-weight: bold;
            text-decoration: none;
            font-size: 18px;
            display: inline-block;
        }

        a:hover {
            text-decoration: underline;
            color: #388e3c; /* darker green on hover */
        }
    </style>
</head>
<body>
    <h1>Student Marks</h1>
    <table>
        <tr>
            <th>Student ID</th>
            <th>Student Name</th>
            <th>Subject</th>
            <th>Marks</th>
            <th>Exam Date</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <%
            for (StudentMark mark : marksList) {
        %>
        <tr>
            <td><%= mark.getStudentID() %></td>
            <td><%= mark.getStudentName() %></td>
            <td><%= mark.getSubject() %></td>
            <td><%= mark.getMarks() %></td>
            <td><%= mark.getExamDate() %></td>
            <td>
               <a href="markupdate.jsp?id=...">
                    <i class="fa fa-pencil" aria-hidden="true"></i>
                </a>
            </td>
            <td>
  		<a href="markdelete.jsp?id=...">
    <i class="fa fa-trash" aria-hidden="true"></i>
  </a>
</td>

        </tr>
        <%
            }
        %>
    </table>
    <div style="text-align: center; margin-top: 20px;">
    <a href="index.jsp">Back to Home</a>
</div>
    
</body>
</html>

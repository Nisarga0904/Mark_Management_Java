<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.StudentMark" %>
<%
    List<StudentMark> reportList = (List<StudentMark>) request.getAttribute("reportList");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Report Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
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

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 30px auto;
            background-color: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #2196f3;
            color: white;
        }

        a {
            display: inline-block;
            margin: 20px;
            text-decoration: none;
            color: #2196f3;
        }

        a:hover {
            text-decoration: underline;
        }

        p {
            text-align: center;
            margin-top: 30px;
            color: #888;
        }
    </style>
</head>
<body>
    <h1>Report Results</h1>

    <%-- DEBUG: Print list size (remove in production) --%>
    <p style="text-align:center; color:gray;">
        <% if (reportList == null) { %>
            reportList is <strong>null</strong>.
        <% } else { %>
            reportList contains <strong><%= reportList.size() %></strong> records.
        <% } %>
    </p>

    <%
        if (reportList == null || reportList.isEmpty()) {
    %>
        <p>No results found.</p>
    <%
        } else {
    %>
        <table>
            <tr>
                <th>Student ID</th>
                <th>Student Name</th>
                <th>Subject</th>
                <th>Marks</th>
                <th>Exam Date</th>
            </tr>
            <%
                for (StudentMark mark : reportList) {
            %>
            <tr>
                <td><%= mark.getStudentID() %></td>
                <td><%= mark.getStudentName() %></td>
                <td><%= mark.getSubject() %></td>
                <td><%= mark.getMarks() %></td>
                <td><%= mark.getExamDate() %></td>
            </tr>
            <%
                }
            %>
        </table>
    <%
        }
    %>

    <div style="text-align: center;">
        <a href="reports.jsp">Back to Reports</a> |
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>

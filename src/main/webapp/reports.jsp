<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Reports</title>
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
        }

        form {
            width: 50%;
            margin: 30px auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        label, select, input {
            display: block;
            margin: 10px 0;
            width: 100%;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        a {
            display: block;
            text-align: center;
            margin: 20px;
            color: #4CAF50;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Generate Reports</h1>
    <form action="report" method="post">
        <label for="reportType">Select Report Type:</label>
        <select name="reportType" id="reportType" required>
            <option value="aboveMarks">Students with Marks Above</option>
            <option value="bySubject">Students by Subject</option>
            <option value="topN">Top N Students</option>
        </select>
        <div id="criteriaInputs"></div>
        <input type="submit" value="Generate Report">
    </form>

    <a href="index.jsp">Back to Home</a>

    <script>
        const reportTypeSelect = document.getElementById('reportType');
        const criteriaDiv = document.getElementById('criteriaInputs');

        function updateCriteriaInputs() {
            const val = reportTypeSelect.value;
            let html = '';
            if (val === 'aboveMarks') {
                html = '<label>Marks Greater Than:</label><input type="number" name="value" min="0" required>';
            } else if (val === 'bySubject') {
                html = '<label>Subject:</label><input type="text" name="subject" required>';
            } else if (val === 'topN') {
                html = '<label>N:</label><input type="number" name="n" min="1" required>';
            }
            criteriaDiv.innerHTML = html;
        }

        reportTypeSelect.addEventListener('change', updateCriteriaInputs);
        updateCriteriaInputs(); // initialize on load
    </script>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Report Criteria</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            background-color: #4CAF50;  /* Green */
            color: white;
            padding: 20px;
            margin: 0;
        }

        form {
            max-width: 400px;
            margin: 30px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(76, 175, 80, 0.3); /* light green shadow */
        }

        label, select {
            display: block;
            width: 100%;
            margin: 10px 0;
            color: #4CAF50;  /* Green text */
        }

        /* Bigger inputs: increased height and font size */
        .criteria-input {
            width: 100%;
            padding: 14px 10px;      /* bigger vertical padding */
            font-size: 18px;         /* bigger font */
            border: 1px solid #4CAF50; /* green border */
            border-radius: 6px;
            box-sizing: border-box;
            margin-top: 8px;
            margin-bottom: 16px;
            color: #4CAF50;  /* green text */
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 18px;
        }

        input[type="submit"]:hover {
            background-color: #388E3C; /* darker green on hover */
        }

        a {
            display: block;
            text-align: center;
            margin: 20px auto;
            color: #4CAF50; /* green link */
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
            color: #388E3C; /* darker green on hover */
        }
    </style>
</head>
<body>
    <h1>Select Report Criteria</h1>
    <form action="report" method="post">
        <label for="reportType">Report Type:</label>
        <select id="reportType" name="reportType" required class="criteria-input">
            <option value="aboveMarks">Students with marks above a specified value</option>
            <option value="bySubject">Students who scored in a specific subject</option>
            <option value="topN">Top N students based on marks</option>
        </select>
        <div id="criteriaInputs"></div>
        <input type="submit" value="Generate Report">
    </form>
    <a href="index.jsp">Back to Home</a>

    <script>
        const reportTypeSelect = document.getElementById('reportType');
        const criteriaDiv = document.getElementById('criteriaInputs');

        function updateCriteriaForm() {
            let html = '';
            switch(reportTypeSelect.value) {
                case 'aboveMarks':
                    html = '<label>Marks above:</label><input class="criteria-input" type="number" name="value" min="0" required>';
                    break;
                case 'bySubject':
                    html = '<label>Subject:</label><input class="criteria-input" type="text" name="subject" required>';
                    break;
                case 'topN':
                    html = '<label>Top N:</label><input class="criteria-input" type="number" name="n" min="1" required>';
                    break;
            }
            criteriaDiv.innerHTML = html;
        }

        reportTypeSelect.addEventListener('change', updateCriteriaForm);
        updateCriteriaForm();
    </script>
</body>
</html>

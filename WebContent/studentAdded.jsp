<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student added successfuly </title>
</head>
<body>
	<h1>Done successfuly!</h1>
	<%--<jsp:include page="studentForm.html"></jsp:include> --%>
	<%
		response.sendRedirect("viewStudents.jsp");
	%>
</body>
</html>
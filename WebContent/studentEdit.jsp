<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<%@page import="com.allanimt.jsp.studentCRUD.StudentDao" %>
		<jsp:useBean id="s" class="com.allanimt.jsp.studentCRUD.Student"></jsp:useBean>
		<jsp:setProperty property="*" name="s"/>
		<%
			int status = StudentDao.updateStudent(s);
			response.sendRedirect("viewStudents.jsp");
		%>
	</body>
</html>
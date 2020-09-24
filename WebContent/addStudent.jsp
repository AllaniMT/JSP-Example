<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1" />
        <title>Add Student</title>
    </head>
    <body>
        <jsp:include page="studentForm.html"></jsp:include>
        <%@page import="com.allanimt.jsp.studentCRUD.StudentDao" %>
        <jsp:useBean id="s" class="com.allanimt.jsp.studentCRUD.Student"></jsp:useBean>
        <jsp:setProperty property="*" name="s" />
        <% 
	        int queryAccepted = StudentDao.insertStudent(s);
	        if (queryAccepted > 0) {
	            response.sendRedirect("studentAdded.jsp");
	        } else {
	            response.sendRedirect("studentFailed.jsp");
	        }  	
        %>
    </body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Insert title here</title>
   </head>
   <body>
      <%@page import="com.allanimt.jsp.studentCRUD.*" %>
      <%
         String  id = request.getParameter("id");
         Student student = StudentDao.getStudentById(Integer.parseInt(id));
         %>
      <form action="studentEdit.jsp" method="post">
         Id:</br>
         <input type="text" name="id" class="form-control" value="<%=student.getId()%>"/>
         Name:</br>
         <input type="text" name="name" class="form-control" value="<%=student.getName()%>"/>
         Email:</br>
         <input type="text" name="email" class="form-control" value="<%=student.getEmail()%>"/>
         Password:</br>
         <input type="text" name="password" class="form-control" value="<%=student.getPassword()%>"/>
         Gender:</br>
         <div class="radio">
            <input type="radio" name="gender" value="male"/>Male</br>
         </div>
         <div class="radio">
            <input type="radio" name="gender" value="female"/>Female</br>
         </div>
         Country:</br>
         <select name="country">
            <option value="tunisia">Tunisia</option>
            <option value="germany">Germany</option>
            <option value="usa">USA</option>
         </select>
         <input type="submit" value="Edit" class="btn btn-primary btn-lg pull-right"/>
      </form>
   </body>
</html>
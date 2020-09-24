<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Insert title here</title>
   </head>
   <body>
      <%@page import="com.allanimt.jsp.studentCRUD.Student" %>
      <%@page import="com.allanimt.jsp.studentCRUD.StudentDao" %>
      <%@page import="java.util.*, java.io.*,java.sql.*" %>
      <%@page import="javax.servlet.*" %>
      <div class="container">
         <h1>All Student</h1>
         <p>Students Informations</p>
         <table class="table table-bordered">
            <thead>
               <tr>
                  <th>ID:</th>
                  <th>Name:</th>
                  <th>Password</th>
                  <th>Email</th>
                  <th>Country</th>
                  <th>Gender</th>
                  <th>Edit</th>
                  <th>Delete</th>
               </tr>
            </thead>
            <%List<Student> listOfAllStudents = StudentDao.showAllStudent(); %>
            <% for(Student student:listOfAllStudents){ %>
               <tbody>
                  <tr>
                     <td><%=student.getId()%></td>
                     <td><%=student.getName() %></td>
                     <td><%=student.getPassword() %></td>
                     <td><%=student.getEmail() %></td>
                     <td><%=student.getCountry() %></td>
                     <td><%=student.getGender() %></td>
                     <td><a href="deleteStudent.jsp?id=<%=student.getId()%>">Delete</a></td>
                     <td><a href="editStudent.jsp?id=<%=student.getId()%>">Edit</a></td>
                  </tr>
               </tbody>
               <%} %>
         </table>
         <a class="btn btn-info btn-lg" href="addStudent.jsp" role="button">Add new Student</a>
      </div>
   </body>
</html>
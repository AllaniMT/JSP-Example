package com.allanimt.jsp.studentCRUD;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {

    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3307/jspStudent?serverTimezone=UTC", "root", "root");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public static int insertStudent(Student student) {
        int status = 0;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("insert into student(name,email,gender,country,password) values(?,?,?,?,?)");
            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, student.getEmail());
            preparedStatement.setString(3, student.getGender());
            preparedStatement.setString(4, student.getCountry());
            preparedStatement.setString(5, student.getPassword());
            status = preparedStatement.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int updateStudent(Student student) {
        int status = 0;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("update student set name=?,email=?,gender=?,country=?,password=? where id=?");
            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, student.getEmail());
            preparedStatement.setString(3, student.getGender());
            preparedStatement.setString(4, student.getCountry());
            preparedStatement.setString(5, student.getPassword());
            preparedStatement.setInt(6, student.getId());
            status = preparedStatement.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int deleteStudent(Student student) {
        int status = 0;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("delete from student where id=?");
            preparedStatement.setInt(1, student.getId());
            status = preparedStatement.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static List < Student > showAllStudent() {
        List < Student > listOfAllStudents = new ArrayList < Student > ();
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("select * from student");
            ResultSet resultSet = preparedStatement.executeQuery();
            System.out.println(connection);
            while (resultSet.next()) {
                Student student = new Student();
                student.setId(resultSet.getInt("id"));
                student.setName(resultSet.getString("name"));
                student.setEmail(resultSet.getString("email"));
                student.setGender(resultSet.getString("gender"));
                student.setCountry(resultSet.getString("country"));
                student.setPassword(resultSet.getString("password"));
                listOfAllStudents.add(student);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return listOfAllStudents;
    }
    public static Student getStudentById(int id) {
        Student student = null;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("select * from student where id=?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                student = new Student();
                student.setId(resultSet.getInt("id"));
                student.setName(resultSet.getString("name"));
                student.setEmail(resultSet.getString("email"));
                student.setGender(resultSet.getString("gender"));
                student.setCountry(resultSet.getString("country"));
                student.setPassword(resultSet.getString("password"));
            }
        } catch (Exception exception) {
            System.out.println(exception);
        }
        return student;
    }
}
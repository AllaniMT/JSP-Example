package com.allanimt.jsp.studentCRUD;

public class Student {
    private int id;
    private String name, email, gender, country, password;
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getGender() {
        return gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    
    public String getCountry() {
        return country;
    }
    
    public void setCountry(String country) {
        this.country = country;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public Student(int id, String name, String email, String gender, String country, String password) {
        super();
        this.id = id;
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.country = country;
        this.password = password;
    }
    
    public Student() {}

}
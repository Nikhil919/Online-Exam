package com.mapping;
// Generated 21 Dec, 2016 3:13:39 PM by Hibernate Tools 4.3.1




public class Student implements java.io.Serializable {


     private String rid;
     private String password;
     private String name;
     private String gender;
     private String email ;
     private String address;
     private String phone;
     private Integer score;

    public Student() {
    }

	
    public Student(String rid, String password, String name,String email , String gender, String address, String phone, Integer score) {
        this.rid = rid;
        this.password = password;
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.address = address;
        this.phone = phone;
        this.score = score;
    }
    
    public String getRid() {
        return this.rid;
    }
    
    public void setRid(String rid) {
        this.rid = rid;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getName() {
        return this.name;
    }
    
    public void setEmail(String email)  {
        this.email = email ;
    }
    public String getEmail()  {
        return this.email ;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getGender() {
        return this.gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    public Integer getScore() {
        return this.score;
    }
    
    public void setScore(Integer score) {
        this.score = score;
    }
}



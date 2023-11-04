package com.klu.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name = "patient_table")
public class Patient {
  
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  int pid;
  String name;
  @Column(nullable = false,unique = true)
  String email;
  String password;
  String contactno;
  String gender;
  int age;
  public int getPid() {
    return pid;
  }
  public void setPid(int pid) {
    this.pid = pid;
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
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }
  public String getContactno() {
    return contactno;
  }
  public void setContactno(String contactno) {
    this.contactno = contactno;
  }
  public String getGender() {
    return gender;
  }
  public void setGender(String gender) {
    this.gender = gender;
  }
  public int getAge() {
    return age;
  }
  public void setAge(int age) {
    this.age = age;
  }
  @Override
  public String toString() {
    return "Patient [pid=" + pid + ", name=" + name + ", email=" + email + ", password=" + password + ", contactno="
        + contactno + ", gender=" + gender + ", age=" + age + "]";
  }
  
  
  
  
  

}
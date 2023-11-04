package com.klu.service;

import java.util.List;

import com.klu.model.Doctor;
import com.klu.model.Patient;

public interface PatientService 
{
  public String addPatient(Patient c);
  public Patient checkPatientLogin(String email,String password);
  public List<Doctor> viewalldoctors();
}
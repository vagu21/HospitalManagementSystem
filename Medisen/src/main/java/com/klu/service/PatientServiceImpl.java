package com.klu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.model.Doctor;
import com.klu.model.Patient;
import com.klu.repository.DoctorRepository;
import com.klu.repository.PatientRepository;

@Service
public class PatientServiceImpl implements PatientService
{

  @Autowired
  private PatientRepository pr;
  @Autowired
  private DoctorRepository doctorRepository;

  @Override
  public String addPatient(Patient p) {
    pr.save(p);
    return "Patient Registered Successfully";
  }

  @Override
  public Patient checkPatientLogin(String email, String password) {
    return pr.checkPatientLogin(email, password);
  }

@Override
public List<Doctor> viewalldoctors() {
	return doctorRepository.findAll();
}
  
  

}
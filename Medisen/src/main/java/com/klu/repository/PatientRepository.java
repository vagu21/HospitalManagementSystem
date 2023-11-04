package com.klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klu.model.Patient;


public interface PatientRepository extends JpaRepository<Patient, Integer>
{
  @Query(" SELECT p FROM Patient p WHERE p.email=?1 AND p.password=?2 ")
  public Patient checkPatientLogin(String email,String password);
}
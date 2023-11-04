package com.klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.model.Doctor;

public interface DoctorRepository extends JpaRepository<Doctor, Integer> 
{

}

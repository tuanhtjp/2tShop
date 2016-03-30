package com.softech.batch107.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softech.batch107.model.Employee;

public interface EmployeeDAO extends JpaRepository<Employee, Integer>{

}

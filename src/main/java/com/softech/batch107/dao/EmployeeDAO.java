package com.softech.batch107.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.softech.batch107.model.Employee;

public interface EmployeeDAO extends JpaRepository<Employee, Integer>{

	public Employee findByEmail(@Param("email") String email);
	public Employee findByEmailAndPasswordAndStatus(@Param("email") String email, @Param("password") String password, @Param("status") byte status);
}

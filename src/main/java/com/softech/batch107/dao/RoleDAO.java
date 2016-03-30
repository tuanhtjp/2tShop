package com.softech.batch107.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softech.batch107.model.Role;

public interface RoleDAO extends JpaRepository<Role, Integer> {
	

}

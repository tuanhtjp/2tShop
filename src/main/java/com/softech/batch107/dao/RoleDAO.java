package com.softech.batch107.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.softech.batch107.model.Role;

public interface RoleDAO extends JpaRepository<Role, Integer> {
	
	
	public Role findByRoleName(@Param("name")String name);

}

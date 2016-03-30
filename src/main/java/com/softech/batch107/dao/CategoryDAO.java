package com.softech.batch107.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softech.batch107.model.Category;

public interface CategoryDAO extends JpaRepository<Category, Integer>{

}

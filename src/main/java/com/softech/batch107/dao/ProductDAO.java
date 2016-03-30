package com.softech.batch107.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softech.batch107.model.Product;

public interface ProductDAO extends JpaRepository<Product, Integer>{
	
}

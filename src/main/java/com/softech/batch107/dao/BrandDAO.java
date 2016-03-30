package com.softech.batch107.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softech.batch107.model.Brand;

public interface BrandDAO extends JpaRepository<Brand, Integer> {

}

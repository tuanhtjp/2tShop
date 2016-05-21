package com.softech.batch107.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.softech.batch107.model.Shipped;
@Repository
public interface ShippedDAO extends JpaRepository<Shipped, Integer>{

}

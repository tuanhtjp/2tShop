package com.softech.batch107.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softech.batch107.model.Orderdetail;

public interface OrderdetailDAO extends JpaRepository<Orderdetail, Integer> {

}

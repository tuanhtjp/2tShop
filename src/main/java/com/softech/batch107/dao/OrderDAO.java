package com.softech.batch107.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softech.batch107.model.Order;

public interface OrderDAO extends JpaRepository<Order, Integer>{

}

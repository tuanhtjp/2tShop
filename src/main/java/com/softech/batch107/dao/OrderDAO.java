package com.softech.batch107.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.softech.batch107.model.Order;

@Repository
public interface OrderDAO extends JpaRepository<Order, Integer>{

}

package com.softech.batch107.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.softech.batch107.model.Payment;

@Repository
public interface PaymentDAO extends JpaRepository<Payment, Integer>{

}

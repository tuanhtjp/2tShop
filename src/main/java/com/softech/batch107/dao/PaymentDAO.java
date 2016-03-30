package com.softech.batch107.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softech.batch107.model.Payment;

public interface PaymentDAO extends JpaRepository<Payment, Integer>{

}

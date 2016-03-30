package com.softech.batch107.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softech.batch107.model.Auctionstatus;

public interface AuctionStatus extends JpaRepository<Auctionstatus, Integer> {

}

package com.softech.batch107.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softech.batch107.model.Auction;

public interface AuctionDAO extends JpaRepository<Auction, Integer> {

}

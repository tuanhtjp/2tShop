package com.softech.batch107.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the categoryauction database table.
 * 
 */
@Entity
@NamedQuery(name="Categoryauction.findAll", query="SELECT c FROM Categoryauction c")
public class Categoryauction implements Serializable {
	private static final long serialVersionUID = 1L;
	private int categoryAuctionID;
	private String categoryName;
	private byte status;
	private List<Auction> auctions;

	public Categoryauction() {
	}


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getCategoryAuctionID() {
		return this.categoryAuctionID;
	}

	public void setCategoryAuctionID(int categoryAuctionID) {
		this.categoryAuctionID = categoryAuctionID;
	}


	public String getCategoryName() {
		return this.categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}


	public byte getStatus() {
		return this.status;
	}

	public void setStatus(byte status) {
		this.status = status;
	}


	//bi-directional many-to-one association to Auction
	@OneToMany(mappedBy="categoryauction")
	public List<Auction> getAuctions() {
		return this.auctions;
	}

	public void setAuctions(List<Auction> auctions) {
		this.auctions = auctions;
	}

	public Auction addAuction(Auction auction) {
		getAuctions().add(auction);
		auction.setCategoryauction(this);

		return auction;
	}

	public Auction removeAuction(Auction auction) {
		getAuctions().remove(auction);
		auction.setCategoryauction(null);

		return auction;
	}

}
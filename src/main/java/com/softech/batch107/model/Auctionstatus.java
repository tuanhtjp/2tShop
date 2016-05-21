package com.softech.batch107.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;


/**
 * The persistent class for the auctionstatus database table.
 * 
 */
@Entity
@NamedQuery(name="Auctionstatus.findAll", query="SELECT a FROM Auctionstatus a")
public class Auctionstatus implements Serializable {
	private static final long serialVersionUID = 1L;
	private int asid;
	private BigDecimal bidPrice;
	private Date bidTime;
	private Auction auction;
	private Customer customer;

	public Auctionstatus() {
	}


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getAsid() {
		return this.asid;
	}

	public void setAsid(int asid) {
		this.asid = asid;
	}


	public BigDecimal getBidPrice() {
		return this.bidPrice;
	}

	public void setBidPrice(BigDecimal bidPrice) {
		this.bidPrice = bidPrice;
	}


	@Temporal(TemporalType.TIMESTAMP)
	public Date getBidTime() {
		return this.bidTime;
	}

	public void setBidTime(Date bidTime) {
		this.bidTime = bidTime;
	}


	//bi-directional many-to-one association to Auction
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="AuctionID")
	public Auction getAuction() {
		return this.auction;
	}

	public void setAuction(Auction auction) {
		this.auction = auction;
	}


	//bi-directional many-to-one association to Customer
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="CustomerID")
	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

}
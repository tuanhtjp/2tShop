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
@Table(name="auctionstatus")
@NamedQuery(name="Auctionstatus.findAll", query="SELECT a FROM Auctionstatus a")
public class Auctionstatus implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int asid;

	private BigDecimal bidPrice;

	@Temporal(TemporalType.TIMESTAMP)
	private Date bidTime;

	//bi-directional many-to-one association to Auction
	@ManyToOne
	@JoinColumn(name="AuctionID")
	private Auction auction;

	//bi-directional many-to-one association to Customer
	@ManyToOne
	@JoinColumn(name="CustomerID")
	private Customer customer;

	public Auctionstatus() {
	}

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

	public Date getBidTime() {
		return this.bidTime;
	}

	public void setBidTime(Date bidTime) {
		this.bidTime = bidTime;
	}

	public Auction getAuction() {
		return this.auction;
	}

	public void setAuction(Auction auction) {
		this.auction = auction;
	}

	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

}
package com.softech.batch107.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the auctions database table.
 * 
 */
@Entity
@Table(name="auctions")
@NamedQuery(name="Auction.findAll", query="SELECT a FROM Auction a")
public class Auction implements Serializable {
	private static final long serialVersionUID = 1L;
	private int auctionID;
	private String description;
	private Employee employee;
	private Date endTime;
	private String imageURL;
	private String productName;
	private BigDecimal startPrice;
	private Date startTime;
	private byte status;
	private Categoryauction categoryauction;
	private Customer customer;
	private List<Auctionstatus> auctionstatuses;

	public Auction() {
	}


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getAuctionID() {
		return this.auctionID;
	}

	public void setAuctionID(int auctionID) {
		this.auctionID = auctionID;
	}


	@Lob
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}


	@Temporal(TemporalType.TIMESTAMP)
	public Date getEndTime() {
		return this.endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}


	@Lob
	public String getImageURL() {
		return this.imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}


	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}


	public BigDecimal getStartPrice() {
		return this.startPrice;
	}

	public void setStartPrice(BigDecimal startPrice) {
		this.startPrice = startPrice;
	}


	@Temporal(TemporalType.TIMESTAMP)
	public Date getStartTime() {
		return this.startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}


	public byte getStatus() {
		return this.status;
	}

	public void setStatus(byte status) {
		this.status = status;
	}


	//bi-directional many-to-one association to Categoryauction
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="CategoryAuctionID")
	public Categoryauction getCategoryauction() {
		return this.categoryauction;
	}

	public void setCategoryauction(Categoryauction categoryauction) {
		this.categoryauction = categoryauction;
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


	//bi-directional many-to-one association to Auctionstatus
	@OneToMany(mappedBy="auction")
	public List<Auctionstatus> getAuctionstatuses() {
		return this.auctionstatuses;
	}

	public void setAuctionstatuses(List<Auctionstatus> auctionstatuses) {
		this.auctionstatuses = auctionstatuses;
	}

	public Auctionstatus addAuctionstatus(Auctionstatus auctionstatus) {
		getAuctionstatuses().add(auctionstatus);
		auctionstatus.setAuction(this);

		return auctionstatus;
	}

	public Auctionstatus removeAuctionstatus(Auctionstatus auctionstatus) {
		getAuctionstatuses().remove(auctionstatus);
		auctionstatus.setAuction(null);

		return auctionstatus;
	}

}
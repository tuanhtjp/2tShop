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

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int auctionID;

	@Lob
	private String description;

	@Temporal(TemporalType.TIMESTAMP)
	private Date endTime;

	@Lob
	private String imageURL;

	private String productName;

	private BigDecimal startPrice;

	@Temporal(TemporalType.TIMESTAMP)
	private Date startTime;

	private byte status;

	//bi-directional many-to-one association to Categoryauction
	@ManyToOne
	@JoinColumn(name="CategoryAuctionID")
	private Categoryauction categoryauction;

	//bi-directional many-to-one association to Customer
	@ManyToOne
	@JoinColumn(name="CustomerID")
	private Customer customer;

	//bi-directional many-to-one association to Employee
	@ManyToOne
	@JoinColumn(name="EmployeeID")
	private Employee employee;

	//bi-directional many-to-one association to Auctionstatus
	@OneToMany(mappedBy="auction", fetch=FetchType.EAGER)
	private List<Auctionstatus> auctionstatuses;

	public Auction() {
	}

	public int getAuctionID() {
		return this.auctionID;
	}

	public void setAuctionID(int auctionID) {
		this.auctionID = auctionID;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getEndTime() {
		return this.endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

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

	public Categoryauction getCategoryauction() {
		return this.categoryauction;
	}

	public void setCategoryauction(Categoryauction categoryauction) {
		this.categoryauction = categoryauction;
	}

	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

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
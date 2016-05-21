package com.softech.batch107.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the customers database table.
 * 
 */
@Entity
@Table(name="customers")
@NamedQuery(name="Customer.findAll", query="SELECT c FROM Customer c")
public class Customer implements Serializable {
	private static final long serialVersionUID = 1L;
	private int customerID;
	private String address;
	private Date dob;
	private String email;
	private String fullName;
	private String image;
	private String password;
	private String phone;
	private byte sex;
	private byte status;
	private List<Auction> auctions;
	private List<Auctionstatus> auctionstatuses;
	private List<Order> orders;
	private List<Starbuck> starbucks;

	public Customer() {
	}


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getCustomerID() {
		return this.customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}


	@Lob
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


	@Temporal(TemporalType.DATE)
	public Date getDob() {
		return this.dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}


	@Lob
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	@Lob
	public String getFullName() {
		return this.fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}


	@Lob
	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}


	@Lob
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}


	public byte getSex() {
		return this.sex;
	}

	public void setSex(byte sex) {
		this.sex = sex;
	}


	public byte getStatus() {
		return this.status;
	}

	public void setStatus(byte status) {
		this.status = status;
	}


	//bi-directional many-to-one association to Auction
	@OneToMany(mappedBy="customer")
	public List<Auction> getAuctions() {
		return this.auctions;
	}

	public void setAuctions(List<Auction> auctions) {
		this.auctions = auctions;
	}

	public Auction addAuction(Auction auction) {
		getAuctions().add(auction);
		auction.setCustomer(this);

		return auction;
	}

	public Auction removeAuction(Auction auction) {
		getAuctions().remove(auction);
		auction.setCustomer(null);

		return auction;
	}


	//bi-directional many-to-one association to Auctionstatus
	@OneToMany(mappedBy="customer")
	public List<Auctionstatus> getAuctionstatuses() {
		return this.auctionstatuses;
	}

	public void setAuctionstatuses(List<Auctionstatus> auctionstatuses) {
		this.auctionstatuses = auctionstatuses;
	}

	public Auctionstatus addAuctionstatus(Auctionstatus auctionstatus) {
		getAuctionstatuses().add(auctionstatus);
		auctionstatus.setCustomer(this);

		return auctionstatus;
	}

	public Auctionstatus removeAuctionstatus(Auctionstatus auctionstatus) {
		getAuctionstatuses().remove(auctionstatus);
		auctionstatus.setCustomer(null);

		return auctionstatus;
	}


	//bi-directional many-to-one association to Order
	@OneToMany(mappedBy="customer")
	public List<Order> getOrders() {
		return this.orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public Order addOrder(Order order) {
		getOrders().add(order);
		order.setCustomer(this);

		return order;
	}

	public Order removeOrder(Order order) {
		getOrders().remove(order);
		order.setCustomer(null);

		return order;
	}


	//bi-directional many-to-one association to Starbuck
	@OneToMany(mappedBy="customer")
	public List<Starbuck> getStarbucks() {
		return this.starbucks;
	}

	public void setStarbucks(List<Starbuck> starbucks) {
		this.starbucks = starbucks;
	}

	public Starbuck addStarbuck(Starbuck starbuck) {
		getStarbucks().add(starbuck);
		starbuck.setCustomer(this);

		return starbuck;
	}

	public Starbuck removeStarbuck(Starbuck starbuck) {
		getStarbucks().remove(starbuck);
		starbuck.setCustomer(null);

		return starbuck;
	}

}
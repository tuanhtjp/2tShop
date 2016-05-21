package com.softech.batch107.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the starbuck database table.
 * 
 */
@Entity
@NamedQuery(name="Starbuck.findAll", query="SELECT s FROM Starbuck s")
public class Starbuck implements Serializable {
	private static final long serialVersionUID = 1L;
	private int starID;
	private Date day;
	private String score;
	private Customer customer;
	private Product product;

	public Starbuck() {
	}


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getStarID() {
		return this.starID;
	}

	public void setStarID(int starID) {
		this.starID = starID;
	}


	@Temporal(TemporalType.DATE)
	public Date getDay() {
		return this.day;
	}

	public void setDay(Date day) {
		this.day = day;
	}


	public String getScore() {
		return this.score;
	}

	public void setScore(String score) {
		this.score = score;
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


	//bi-directional many-to-one association to Product
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ProductID")
	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
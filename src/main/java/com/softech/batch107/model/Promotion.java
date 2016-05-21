package com.softech.batch107.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the promotions database table.
 * 
 */
@Entity
@Table(name="promotions")
@NamedQuery(name="Promotion.findAll", query="SELECT p FROM Promotion p")
public class Promotion implements Serializable {
	private static final long serialVersionUID = 1L;
	private int promotionID;
	private String description;
	private Date endDate;
	private String imageUrl;
	private String promotionCode;
	private Date startDate;
	private int value;
	private List<Order> orders;

	public Promotion() {
	}


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getPromotionID() {
		return this.promotionID;
	}

	public void setPromotionID(int promotionID) {
		this.promotionID = promotionID;
	}


	@Lob
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	@Temporal(TemporalType.TIMESTAMP)
	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}


	@Lob
	public String getImageUrl() {
		return this.imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}


	public String getPromotionCode() {
		return this.promotionCode;
	}

	public void setPromotionCode(String promotionCode) {
		this.promotionCode = promotionCode;
	}


	@Temporal(TemporalType.TIMESTAMP)
	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}


	public int getValue() {
		return this.value;
	}

	public void setValue(int value) {
		this.value = value;
	}


	//bi-directional many-to-one association to Order
	@OneToMany(mappedBy="promotion")
	public List<Order> getOrders() {
		return this.orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public Order addOrder(Order order) {
		getOrders().add(order);
		order.setPromotion(this);

		return order;
	}

	public Order removeOrder(Order order) {
		getOrders().remove(order);
		order.setPromotion(null);

		return order;
	}

}
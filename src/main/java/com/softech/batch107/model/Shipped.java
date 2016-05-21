package com.softech.batch107.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;


/**
 * The persistent class for the shipped database table.
 * 
 */
@Entity
@NamedQuery(name="Shipped.findAll", query="SELECT s FROM Shipped s")
public class Shipped implements Serializable {
	private static final long serialVersionUID = 1L;
	private int shipID;
	private String shipMethod;
	private byte status;
	private BigDecimal transportFee;
	private List<Order> orders;

	public Shipped() {
	}


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getShipID() {
		return this.shipID;
	}

	public void setShipID(int shipID) {
		this.shipID = shipID;
	}


	public String getShipMethod() {
		return this.shipMethod;
	}

	public void setShipMethod(String shipMethod) {
		this.shipMethod = shipMethod;
	}


	public byte getStatus() {
		return this.status;
	}

	public void setStatus(byte status) {
		this.status = status;
	}


	public BigDecimal getTransportFee() {
		return this.transportFee;
	}

	public void setTransportFee(BigDecimal transportFee) {
		this.transportFee = transportFee;
	}


	//bi-directional many-to-one association to Order
	@OneToMany(mappedBy="shipped")
	public List<Order> getOrders() {
		return this.orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public Order addOrder(Order order) {
		getOrders().add(order);
		order.setShipped(this);

		return order;
	}

	public Order removeOrder(Order order) {
		getOrders().remove(order);
		order.setShipped(null);

		return order;
	}

}
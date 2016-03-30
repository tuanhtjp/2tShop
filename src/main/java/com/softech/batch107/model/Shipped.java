package com.softech.batch107.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the shipped database table.
 * 
 */
@Entity
@Table(name="shipped")
@NamedQuery(name="Shipped.findAll", query="SELECT s FROM Shipped s")
public class Shipped implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int shipID;

	private String shipMethod;

	private byte status;

	private BigDecimal transportFee;

	//bi-directional one-to-one association to Order
	@OneToOne
	@JoinColumn(name="ShipID")
	private Order order;

	public Shipped() {
	}

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

	public Order getOrder() {
		return this.order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

}
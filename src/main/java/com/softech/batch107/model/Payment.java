package com.softech.batch107.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the payments database table.
 * 
 */
@Entity
@Table(name="payments")
@NamedQuery(name="Payment.findAll", query="SELECT p FROM Payment p")
public class Payment implements Serializable {
	private static final long serialVersionUID = 1L;
	private int paymentID;
	private String paymentMethod;
	private Order order;

	public Payment() {
	}


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getPaymentID() {
		return this.paymentID;
	}

	public void setPaymentID(int paymentID) {
		this.paymentID = paymentID;
	}


	public String getPaymentMethod() {
		return this.paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}


	//bi-directional one-to-one association to Order
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="PaymentID")
	public Order getOrder() {
		return this.order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

}
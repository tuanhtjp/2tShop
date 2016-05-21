package com.softech.batch107.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the orders database table.
 * 
 */
@Entity
@Table(name="orders")
@NamedQuery(name="Order.findAll", query="SELECT o FROM Order o")
public class Order implements Serializable {
	private static final long serialVersionUID = 1L;
	private int orderID;
	private Date orderDate;
	private int paymentID;
	private String shipAddress;
	private byte status;
	private Shipped shipped;
	private String phone;
	private Payment payment;
	private List<Orderdetail> orderdetails;
	private Customer customer;
	private Employee employee;
	private Promotion promotion;

	public Order() {
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getOrderID() {
		return this.orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	@Temporal(TemporalType.TIMESTAMP)
	public Date getOrderDate() {
		return this.orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}


	/*public int getPaymentID() {
		return this.paymentID;
	}

	public void setPaymentID(int paymentID) {
		this.paymentID = paymentID;
	}*/

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getShipAddress() {
		return this.shipAddress;
	}

	public void setShipAddress(String shipAddress) {
		this.shipAddress = shipAddress;
	}

	public byte getStatus() {
		return this.status;
	}

	public void setStatus(byte status) {
		this.status = status;
	}


	//bi-directional many-to-one association to Shipped
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="ShipID")
	public Shipped getShipped() {
		return this.shipped;
	}

	public void setShipped(Shipped shipped) {
		this.shipped = shipped;
	}


	//bi-directional one-to-one association to Payment
	@OneToOne(/*mappedBy="order",*/ fetch=FetchType.EAGER)
	@JoinColumn(name="PaymentID")
	public Payment getPayment() {
		return this.payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}


	//bi-directional many-to-one association to Orderdetail
	@OneToMany(mappedBy="order", cascade = CascadeType.ALL)
	public List<Orderdetail> getOrderdetails() {
		return this.orderdetails;
	}

	public void setOrderdetails(List<Orderdetail> orderdetails) {
		this.orderdetails = orderdetails;
	}

	public Orderdetail addOrderdetail(Orderdetail orderdetail) {
		getOrderdetails().add(orderdetail);
		orderdetail.setOrder(this);

		return orderdetail;
	}

	public Orderdetail removeOrderdetail(Orderdetail orderdetail) {
		getOrderdetails().remove(orderdetail);
		orderdetail.setOrder(null);

		return orderdetail;
	}


	//bi-directional many-to-one association to Customer
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="CustomerID")
	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}


	//bi-directional many-to-one association to Employee
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="EmployeeID")
	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}


	//bi-directional many-to-one association to Promotion
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="PromotionID")
	public Promotion getPromotion() {
		return this.promotion;
	}

	public void setPromotion(Promotion promotion) {
		this.promotion = promotion;
	}

}
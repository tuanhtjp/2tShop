package com.softech.batch107.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the products database table.
 * 
 */
@Entity
@Table(name="products")
@NamedQuery(name="Product.findAll", query="SELECT p FROM Product p")
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;
	private int productID;
	private String barcode;
	private Date createdDate;
	private String description;
	private int discount;
	private String displayPosition;
	private String imageUrl;
	private BigDecimal price;
	private String productName;
	private int quantity;
	private int sortOrder;
	private byte status;
	private List<Orderdetail> orderdetails;
	private Brand brand;
	private Category category;
	private Size size;
	private List<Starbuck> starbucks;

	public Product() {
	}


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getProductID() {
		return this.productID;
	}

	public void setProductID(int productID) {
		this.productID = productID;
	}


	public String getBarcode() {
		return this.barcode;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}


	@Temporal(TemporalType.TIMESTAMP)
	public Date getCreatedDate() {
		return this.createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}


	@Lob
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	public int getDiscount() {
		return this.discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}


	public String getDisplayPosition() {
		return this.displayPosition;
	}

	public void setDisplayPosition(String displayPosition) {
		this.displayPosition = displayPosition;
	}


	@Lob
	public String getImageUrl() {
		return this.imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}


	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}


	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}


	public int getQuantity() {
		return this.quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public int getSortOrder() {
		return this.sortOrder;
	}

	public void setSortOrder(int sortOrder) {
		this.sortOrder = sortOrder;
	}


	public byte getStatus() {
		return this.status;
	}

	public void setStatus(byte status) {
		this.status = status;
	}


	//bi-directional many-to-one association to Orderdetail
	@OneToMany(mappedBy="product")
	public List<Orderdetail> getOrderdetails() {
		return this.orderdetails;
	}

	public void setOrderdetails(List<Orderdetail> orderdetails) {
		this.orderdetails = orderdetails;
	}

	public Orderdetail addOrderdetail(Orderdetail orderdetail) {
		getOrderdetails().add(orderdetail);
		orderdetail.setProduct(this);

		return orderdetail;
	}

	public Orderdetail removeOrderdetail(Orderdetail orderdetail) {
		getOrderdetails().remove(orderdetail);
		orderdetail.setProduct(null);

		return orderdetail;
	}


	//bi-directional many-to-one association to Brand
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="BrandID")
	public Brand getBrand() {
		return this.brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}


	//bi-directional many-to-one association to Category
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="CategoryID")
	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}


	//bi-directional many-to-one association to Size
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="SizeID")
	public Size getSize() {
		return this.size;
	}

	public void setSize(Size size) {
		this.size = size;
	}


	//bi-directional many-to-one association to Starbuck
	@OneToMany(mappedBy="product")
	public List<Starbuck> getStarbucks() {
		return this.starbucks;
	}

	public void setStarbucks(List<Starbuck> starbucks) {
		this.starbucks = starbucks;
	}

	public Starbuck addStarbuck(Starbuck starbuck) {
		getStarbucks().add(starbuck);
		starbuck.setProduct(this);

		return starbuck;
	}

	public Starbuck removeStarbuck(Starbuck starbuck) {
		getStarbucks().remove(starbuck);
		starbuck.setProduct(null);

		return starbuck;
	}

}
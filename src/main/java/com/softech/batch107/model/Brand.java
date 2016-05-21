package com.softech.batch107.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the brands database table.
 * 
 */
@Entity
@Table(name="brands")
@NamedQuery(name="Brand.findAll", query="SELECT b FROM Brand b")
public class Brand implements Serializable {
	private static final long serialVersionUID = 1L;
	private int brandID;
	private String brandName;
	private String description;
	private byte status;
	private List<Product> products;

	public Brand() {
	}


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getBrandID() {
		return this.brandID;
	}

	public void setBrandID(int brandID) {
		this.brandID = brandID;
	}


	public String getBrandName() {
		return this.brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}


	@Lob
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	public byte getStatus() {
		return this.status;
	}

	public void setStatus(byte status) {
		this.status = status;
	}


	//bi-directional many-to-one association to Product
	@OneToMany(mappedBy="brand")
	public List<Product> getProducts() {
		return this.products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public Product addProduct(Product product) {
		getProducts().add(product);
		product.setBrand(this);

		return product;
	}

	public Product removeProduct(Product product) {
		getProducts().remove(product);
		product.setBrand(null);

		return product;
	}

}
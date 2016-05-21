package com.softech.batch107.model;

public class Item {
	Product product;
	int quantity;

	public Item(Product product, int quantity) {
		super();
		this.product = product;
		this.quantity = quantity;
	}

	public Item() {
		super();
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}

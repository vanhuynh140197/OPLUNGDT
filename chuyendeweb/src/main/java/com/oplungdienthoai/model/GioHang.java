package com.oplungdienthoai.model;

public class GioHang {
	ProductsEntity productsEntity;
	int soLuong;

	public GioHang(ProductsEntity productsEntity, int soLuong) {
		this.productsEntity = productsEntity;
		this.soLuong = soLuong;
	}

	public ProductsEntity getProductsEntity() {
		return productsEntity;
	}

	public void setProductsEntity(ProductsEntity productsEntity) {
		this.productsEntity = productsEntity;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	@Override
	public String toString() {
		return productsEntity.getProductsId() + "\t"+ getSoLuong();
	}
}

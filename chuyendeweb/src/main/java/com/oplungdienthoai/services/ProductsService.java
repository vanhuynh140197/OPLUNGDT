package com.oplungdienthoai.services;

import java.util.List;

import com.oplungdienthoai.model.ProductsEntity;

public interface ProductsService {

	public List<ProductsEntity> getAll();

	public ProductsEntity getProducts(String productsId);

	public boolean add(ProductsEntity products);

	public boolean edit(ProductsEntity products);

	public boolean remove(String productsId);
}

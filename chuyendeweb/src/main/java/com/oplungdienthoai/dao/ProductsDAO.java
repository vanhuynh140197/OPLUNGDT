package com.oplungdienthoai.dao;

import java.util.List;

import com.oplungdienthoai.model.ProductsEntity;

public interface ProductsDAO {

	public List<ProductsEntity> getAll();

	public ProductsEntity getProducts(String productsId);

	public List<ProductsEntity> getProductsUseProductType(String productTypesId);

	public boolean add(ProductsEntity products);

	public boolean edit(ProductsEntity products);

	public boolean remove(String productsId);

}

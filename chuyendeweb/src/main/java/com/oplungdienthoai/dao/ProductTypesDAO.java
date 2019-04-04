package com.oplungdienthoai.dao;

import java.util.List;

import com.oplungdienthoai.model.ProductTypesEntity;

public interface ProductTypesDAO {

	public List<ProductTypesEntity> getAll();

	public ProductTypesEntity getProductTypes(String productTypesId);

	public boolean add(ProductTypesEntity productTypes);

	public boolean edit(ProductTypesEntity productTypes);

	public boolean remove(String productTypesId);
}

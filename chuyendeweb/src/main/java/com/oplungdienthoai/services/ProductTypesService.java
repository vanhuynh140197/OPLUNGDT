package com.oplungdienthoai.services;

import java.util.List;

import com.oplungdienthoai.model.ProductTypesEntity;

public interface ProductTypesService {

	public List<ProductTypesEntity> getAll();

	public ProductTypesEntity getProductTypes(String productTypesId);

	public boolean add(ProductTypesEntity productTypes);

	public boolean edit(ProductTypesEntity productTypes);

	public boolean remove(String productTypesId);
}

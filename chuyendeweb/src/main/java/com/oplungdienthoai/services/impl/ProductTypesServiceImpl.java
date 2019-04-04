package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.ProductTypesDAO;
import com.oplungdienthoai.model.ProductTypesEntity;
import com.oplungdienthoai.services.ProductTypesService;

@Service
public class ProductTypesServiceImpl implements ProductTypesService {

	@Autowired
	ProductTypesDAO productTypesDAO;

	@Override
	public List<ProductTypesEntity> getAll() {
		return productTypesDAO.getAll();
	}

	@Override
	public ProductTypesEntity getProductTypes(String productTypesId) {
		return productTypesDAO.getProductTypes(productTypesId);
	}

	@Override
	public boolean add(ProductTypesEntity productTypes) {
		return productTypesDAO.add(productTypes);
	}

	@Override
	public boolean edit(ProductTypesEntity productTypes) {
		return productTypesDAO.edit(productTypes);
	}

	@Override
	public boolean remove(String productTypesId) {
		return productTypesDAO.remove(productTypesId);
	}
}

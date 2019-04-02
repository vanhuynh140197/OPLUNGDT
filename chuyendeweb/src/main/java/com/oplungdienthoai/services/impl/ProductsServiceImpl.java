package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.ProductsDAO;
import com.oplungdienthoai.model.ProductsEntity;
import com.oplungdienthoai.services.ProductsService;

@Service
public class ProductsServiceImpl implements ProductsService {

	@Autowired
	ProductsDAO productsDAO;

	@Override
	public List<ProductsEntity> getAll() {
		return productsDAO.getAll();
	}

	@Override
	public ProductsEntity getProducts(String productsId) {
		return productsDAO.getProducts(productsId);
	}

	@Override
	public boolean add(ProductsEntity products) {
		return productsDAO.add(products);
	}

	@Override
	public boolean edit(ProductsEntity products) {
		return productsDAO.edit(products);
	}

	@Override
	public boolean remove(String productsId) {
		return productsDAO.remove(productsId);
	}
}

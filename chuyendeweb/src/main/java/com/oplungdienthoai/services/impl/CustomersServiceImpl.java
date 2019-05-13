package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.CustomersDAO;
import com.oplungdienthoai.model.CustomersEntity;
import com.oplungdienthoai.services.CustomersService;

@Service
public class CustomersServiceImpl implements CustomersService {

	@Autowired
	CustomersDAO customersDAO;

	@Override
	public List<CustomersEntity> getAll() {
		return customersDAO.getAll();
	}

	@Override
	public CustomersEntity getCustomers(String customersId) {
		return customersDAO.getCustomers(customersId);
	}

	@Override
	public CustomersEntity getCustomersByEmail(String customersEmail) {
		return customersDAO.getCustomersByEmail(customersEmail);
	}

	@Override
	public boolean add(CustomersEntity customers) {
		return customersDAO.add(customers);
	}

	@Override
	public boolean edit(CustomersEntity customers) {
		return customersDAO.edit(customers);
	}

	@Override
	public boolean remove(String customersId) {
		return customersDAO.remove(customersId);
	}
}

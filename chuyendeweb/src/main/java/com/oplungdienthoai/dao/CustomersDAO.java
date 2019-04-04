package com.oplungdienthoai.dao;

import java.util.List;

import com.oplungdienthoai.model.CustomersEntity;

public interface CustomersDAO {

	public List<CustomersEntity> getAll();

	public CustomersEntity getCustomers(String customersId);

	public boolean add(CustomersEntity customers);

	public boolean edit(CustomersEntity customers);

	public boolean remove(String customersId);
}

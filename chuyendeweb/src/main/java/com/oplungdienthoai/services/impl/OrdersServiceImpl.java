package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.OrdersDAO;
import com.oplungdienthoai.model.OrdersEntity;
import com.oplungdienthoai.services.OrdersService;

@Service
public class OrdersServiceImpl implements OrdersService {

	@Autowired
	OrdersDAO ordersDAO;

	@Override
	public List<OrdersEntity> getAll() {
		return ordersDAO.getAll();
	}

	@Override
	public OrdersEntity getOrders(String ordersId) {
		return ordersDAO.getOrders(ordersId);
	}

	@Override
	public boolean add(OrdersEntity orders) {
		return ordersDAO.add(orders);
	}

	@Override
	public boolean edit(OrdersEntity orders) {
		return ordersDAO.edit(orders);
	}

	@Override
	public boolean remove(String ordersId) {
		return ordersDAO.remove(ordersId);
	}
}

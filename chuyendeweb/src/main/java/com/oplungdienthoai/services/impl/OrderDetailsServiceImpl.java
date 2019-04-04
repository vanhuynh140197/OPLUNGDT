package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.OrderDetailsDAO;
import com.oplungdienthoai.model.OrderDetailsEntity;
import com.oplungdienthoai.services.OrderDetailsService;

@Service
public class OrderDetailsServiceImpl implements OrderDetailsService {

	@Autowired
	OrderDetailsDAO orderDetailsDAO;

	@Override
	public List<OrderDetailsEntity> getAll() {
		return orderDetailsDAO.getAll();
	}

	@Override
	public OrderDetailsEntity getOrderDetails(String ordersId) {
		return orderDetailsDAO.getOrderDetails(ordersId);
	}

	@Override
	public boolean add(OrderDetailsEntity orders) {
		return orderDetailsDAO.add(orders);
	}

	@Override
	public boolean edit(OrderDetailsEntity orders) {
		return orderDetailsDAO.edit(orders);
	}

	@Override
	public boolean remove(String ordersId) {
		return orderDetailsDAO.remove(ordersId);
	}
}

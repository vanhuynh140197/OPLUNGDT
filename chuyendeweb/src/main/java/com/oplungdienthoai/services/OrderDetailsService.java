package com.oplungdienthoai.services;

import java.util.List;

import com.oplungdienthoai.model.OrderDetailsEntity;

public interface OrderDetailsService {

	public List<OrderDetailsEntity> getAll();

	public OrderDetailsEntity getOrderDetails(String ordersId);

	public boolean add(OrderDetailsEntity orders);

	public boolean edit(OrderDetailsEntity orders);

	public boolean remove(String ordersId);
}

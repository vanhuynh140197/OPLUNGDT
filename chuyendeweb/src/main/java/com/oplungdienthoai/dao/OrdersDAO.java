package com.oplungdienthoai.dao;

import java.util.List;

import com.oplungdienthoai.model.OrdersEntity;

public interface OrdersDAO {

	public List<OrdersEntity> getAll();

	public OrdersEntity getOrders(String ordersId);

	public boolean add(OrdersEntity orders);

	public boolean edit(OrdersEntity orders);

	public boolean remove(String ordersId);
}

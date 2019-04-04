package com.oplungdienthoai.dao;

import java.util.List;

import com.oplungdienthoai.model.DeliveryEntity;

public interface DeliveryDAO {

	public List<DeliveryEntity> getAll();

	public DeliveryEntity getDelivery(String deliveryId);

	public boolean add(DeliveryEntity delivery);

	public boolean edit(DeliveryEntity delivery);

	public boolean remove(String deliveryId);
}

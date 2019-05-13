package com.oplungdienthoai.services;

import java.util.List;

import com.oplungdienthoai.model.ShippingMethodEntity;

public interface ShippingMethodService {
	public List<ShippingMethodEntity> getAll();

	public ShippingMethodEntity getShippingMethod(String shippingId);

	public boolean add(ShippingMethodEntity shipping);

	public boolean edit(ShippingMethodEntity shipping);

	public boolean remove(String shippingId);
}

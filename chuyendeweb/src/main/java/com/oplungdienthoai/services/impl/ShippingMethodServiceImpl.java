package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.ShippingMethodDAO;
import com.oplungdienthoai.model.ShippingMethodEntity;
import com.oplungdienthoai.services.ShippingMethodService;

@Service
public class ShippingMethodServiceImpl implements ShippingMethodService {

	@Autowired
	ShippingMethodDAO shippingMethodDAO;

	@Override
	public List<ShippingMethodEntity> getAll() {
		return shippingMethodDAO.getAll();
	}

	@Override
	public ShippingMethodEntity getShippingMethod(String shippingId) {
		return shippingMethodDAO.getShippingMethod(shippingId);
	}

	@Override
	public boolean add(ShippingMethodEntity shipping) {
		return shippingMethodDAO.add(shipping);
	}

	@Override
	public boolean edit(ShippingMethodEntity shipping) {
		return shippingMethodDAO.edit(shipping);
	}

	@Override
	public boolean remove(String shippingId) {
		return shippingMethodDAO.remove(shippingId);
	}

}

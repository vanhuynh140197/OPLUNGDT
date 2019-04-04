package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.DeliveryDAO;
import com.oplungdienthoai.model.DeliveryEntity;
import com.oplungdienthoai.services.DeliveryService;

@Service
public class DeliveryServiceImpl implements DeliveryService {

	@Autowired
	DeliveryDAO deliveryDAO;

	@Override
	public List<DeliveryEntity> getAll() {
		return deliveryDAO.getAll();
	}

	@Override
	public DeliveryEntity getDelivery(String deliveryId) {
		return deliveryDAO.getDelivery(deliveryId);
	}

	@Override
	public boolean add(DeliveryEntity delivery) {
		return deliveryDAO.add(delivery);
	}

	@Override
	public boolean edit(DeliveryEntity delivery) {
		return deliveryDAO.edit(delivery);
	}

	@Override
	public boolean remove(String deliveryId) {
		return deliveryDAO.remove(deliveryId);
	}
}

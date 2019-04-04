package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.DeliveryDAO;
import com.oplungdienthoai.model.DeliveryEntity;

@Transactional
@Repository
public class DeliveryDAOImpl implements DeliveryDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<DeliveryEntity> getAll() {
		return sessionFactory.getCurrentSession().createQuery("from DeliveryEntity").list();
	}

	@Override
	public DeliveryEntity getDelivery(String deliveryId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from DeliveryEntity where deliveryId='" + deliveryId + "'").list();
		return !list.isEmpty() ? (DeliveryEntity) list.get(0) : null;
	}

	@Override
	public boolean add(DeliveryEntity delivery) {
		try {
			sessionFactory.getCurrentSession().save(delivery);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(DeliveryEntity delivery) {
		try {
			sessionFactory.getCurrentSession().update(delivery);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String deliveryId) {
		try {
			sessionFactory.getCurrentSession().delete(getDelivery(deliveryId));
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

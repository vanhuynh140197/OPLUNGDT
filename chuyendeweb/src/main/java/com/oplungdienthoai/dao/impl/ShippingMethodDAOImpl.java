package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.ShippingMethodDAO;
import com.oplungdienthoai.model.ShippingMethodEntity;

@Transactional
@Repository
public class ShippingMethodDAOImpl implements ShippingMethodDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<ShippingMethodEntity> getAll() {
		return sessionFactory.getCurrentSession().createQuery("from ShippingMethodEntity").list();
	}

	@Override
	public ShippingMethodEntity getShippingMethod(String shippingId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from ShippingMethodEntity where shippingId='" + shippingId + "'").list();
		return !list.isEmpty() ? (ShippingMethodEntity) list.get(0) : null;
	}

	@Override
	public boolean add(ShippingMethodEntity shipping) {
		try {
			sessionFactory.getCurrentSession().save(shipping);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(ShippingMethodEntity shipping) {
		try {
			sessionFactory.getCurrentSession().update(shipping);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String shippingId) {
		try {
			sessionFactory.getCurrentSession().delete(getShippingMethod(shippingId));
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

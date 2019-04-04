package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.OrderDetailsDAO;
import com.oplungdienthoai.model.OrderDetailsEntity;

@Transactional
@Repository
public class OrderDetailsDAOImpl implements OrderDetailsDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderDetailsEntity> getAll() {
		return sessionFactory.getCurrentSession().createQuery("from OrderDetailsEntity").list();
	}

	@Override
	public OrderDetailsEntity getOrderDetails(String ordersId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from OrderDetailsEntity where ordersId='" + ordersId + "'").list();
		return !list.isEmpty() ? (OrderDetailsEntity) list.get(0) : null;
	}

	@Override
	public boolean add(OrderDetailsEntity orders) {
		try {
			sessionFactory.getCurrentSession().save(orders);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(OrderDetailsEntity orders) {
		try {
			sessionFactory.getCurrentSession().update(orders);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String ordersId) {
		try {
			sessionFactory.getCurrentSession().delete(getOrderDetails(ordersId));
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

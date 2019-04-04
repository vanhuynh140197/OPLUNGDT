package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.OrdersDAO;
import com.oplungdienthoai.model.OrdersEntity;

@Transactional
@Repository
public class OrdersDAOImpl implements OrdersDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<OrdersEntity> getAll() {
		return sessionFactory.getCurrentSession().createQuery("from OrdersEntity where ordersStatus='" + 1 + "'")
				.list();
	}

	@Override
	public OrdersEntity getOrders(String ordersId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from OrdersEntity where ordersId='" + ordersId + "'").list();
		return !list.isEmpty() ? (OrdersEntity) list.get(0) : null;
	}

	@Override
	public boolean add(OrdersEntity orders) {
		try {
			sessionFactory.getCurrentSession().save(orders);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(OrdersEntity orders) {
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
			sessionFactory.getCurrentSession()
					.createQuery("update OrdersEntity set ordersStatus='" + 0 + "' where ordersId='" + ordersId + "'")
					.executeUpdate();
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

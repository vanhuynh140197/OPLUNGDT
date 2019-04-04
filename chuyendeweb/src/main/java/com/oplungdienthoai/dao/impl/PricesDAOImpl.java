package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.PricesDAO;
import com.oplungdienthoai.model.PricesEntity;

@Transactional
@Repository
public class PricesDAOImpl implements PricesDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<PricesEntity> getAll() {
		return sessionFactory.getCurrentSession().createQuery("from PricesEntity").list();
	}

	@Override
	public PricesEntity getPrices(String pricesId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from PricesEntity where pricesId='" + pricesId + "'").list();
		return !list.isEmpty() ? (PricesEntity) list.get(0) : null;
	}

	@Override
	public boolean add(PricesEntity prices) {
		try {
			sessionFactory.getCurrentSession().save(prices);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(PricesEntity prices) {
		try {
			sessionFactory.getCurrentSession().update(prices);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String pricesId) {
		try {
			sessionFactory.getCurrentSession().delete(getPrices(pricesId));
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

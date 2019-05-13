package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.PaymentsDAO;
import com.oplungdienthoai.model.PaymentsEntity;

@Transactional
@Repository
public class PaymentsDAOImpl implements PaymentsDAO {
	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<PaymentsEntity> getAll() {
		return sessionFactory.getCurrentSession().createQuery("from PaymentsEntity").list();
	}

	@Override
	public PaymentsEntity getPayments(String paymentsId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from PaymentsEntity where paymentsId='" + paymentsId + "'").list();
		return !list.isEmpty() ? (PaymentsEntity) list.get(0) : null;
	}

	@Override
	public boolean add(PaymentsEntity payments) {
		try {
			sessionFactory.getCurrentSession().save(payments);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(PaymentsEntity payments) {
		try {
			sessionFactory.getCurrentSession().update(payments);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String paymentsId) {
		try {
			sessionFactory.getCurrentSession().delete(getPayments(paymentsId));
		} catch (Exception e) {
			return false;
		}
		return true;
	}

}

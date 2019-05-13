package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.CustomersDAO;
import com.oplungdienthoai.model.CustomersEntity;

@Transactional
@Repository
public class CustomersDAOImpl implements CustomersDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<CustomersEntity> getAll() {
		return sessionFactory.getCurrentSession()
				.createQuery("from CustomersEntity where customersStatus=" + false + "").list();
	}

	@Override
	public CustomersEntity getCustomers(String customersId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from CustomersEntity where customersId='" + customersId + "'").list();
		return !list.isEmpty() ? (CustomersEntity) list.get(0) : null;
	}

	@Override
	public CustomersEntity getCustomersByEmail(String customersEmail) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from CustomersEntity where email='" + customersEmail + "'").list();
		return !list.isEmpty() ? (CustomersEntity) list.get(0) : null;
	}

	@Override
	public boolean add(CustomersEntity customers) {
		try {
			sessionFactory.getCurrentSession().save(customers);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(CustomersEntity customers) {
		try {
			sessionFactory.getCurrentSession().update(customers);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String customersId) {
		try {
			sessionFactory.getCurrentSession().createQuery(
					"update CustomersEntity set customersStatus=" + true + " where customersId='" + customersId + "'")
					.executeUpdate();
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

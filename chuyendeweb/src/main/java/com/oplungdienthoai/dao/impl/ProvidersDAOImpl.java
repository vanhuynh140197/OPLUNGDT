package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.ProvidersDAO;
import com.oplungdienthoai.model.ProvidersEntity;

@Transactional
@Repository
public class ProvidersDAOImpl implements ProvidersDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<ProvidersEntity> getAll() {
		return sessionFactory.getCurrentSession().createQuery("from ProvidersEntity where providerStatus=" + false + "")
				.list();
	}

	@Override
	public ProvidersEntity getProviders(String providersId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from ProvidersEntity where providersId='" + providersId + "'").list();
		return !list.isEmpty() ? (ProvidersEntity) list.get(0) : null;
	}

	@Override
	public boolean add(ProvidersEntity providers) {
		try {
			sessionFactory.getCurrentSession().save(providers);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(ProvidersEntity providers) {
		try {
			sessionFactory.getCurrentSession().update(providers);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String providersId) {
		try {
			sessionFactory.getCurrentSession().createQuery(
					"update ProvidersEntity set providerStatus=" + true + " where providersId='" + providersId + "'")
					.executeUpdate();
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

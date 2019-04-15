package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.ProductTypesDAO;
import com.oplungdienthoai.model.ProductTypesEntity;

@Transactional
@Repository
public class ProductTypesDAOImpl implements ProductTypesDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductTypesEntity> getAll() {
		return sessionFactory.getCurrentSession()
				.createQuery("from ProductTypesEntity where productTypesStatus=" + true + "").list();
	}

	@Override
	public ProductTypesEntity getProductTypes(String productTypesId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from ProductTypesEntity where productTypesId='" + productTypesId + "'").list();
		return !list.isEmpty() ? (ProductTypesEntity) list.get(0) : null;
	}

	@Override
	public boolean add(ProductTypesEntity productTypes) {
		try {
			sessionFactory.getCurrentSession().save(productTypes);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(ProductTypesEntity productTypes) {
		try {
			sessionFactory.getCurrentSession().update(productTypes);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String productTypesId) {
		try {
			sessionFactory.getCurrentSession().createQuery("update ProductTypesEntity set productTypesStatus=" + false
					+ " where productTypesId='" + productTypesId + "'").executeUpdate();
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

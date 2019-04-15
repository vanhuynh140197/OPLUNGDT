package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.ProductsDAO;
import com.oplungdienthoai.model.ProductsEntity;

@Transactional
@Repository
public class ProductsDAOImpl implements ProductsDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductsEntity> getAll() {
		return sessionFactory.getCurrentSession().createQuery("from ProductsEntity where productsStatus=" + true + "")
				.list();
	}

	@Override
	public ProductsEntity getProducts(String productsId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from ProductsEntity where productsId='" + productsId + "'").list();
		return !list.isEmpty() ? (ProductsEntity) list.get(0) : null;
	}

	@Override
	public boolean add(ProductsEntity products) {
		try {
			sessionFactory.getCurrentSession().save(products);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(ProductsEntity products) {
		try {
			sessionFactory.getCurrentSession().update(products);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String productsId) {
		try {
			sessionFactory.getCurrentSession().createQuery(
					"update ProductsEntity set productsStatus=" + false + " where productsId='" + productsId + "'")
					.executeUpdate();
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.PromotionsDAO;
import com.oplungdienthoai.model.PromotionsEntity;

@Transactional
@Repository
public class PromotionsDAOImpl implements PromotionsDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<PromotionsEntity> getAll() {
		return sessionFactory.getCurrentSession()
				.createQuery("from PromotionsEntity where promotionStatus=" + true + "").list();
	}

	@Override
	public PromotionsEntity getPromotions(String promotionsId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from PromotionsEntity where promotionsId='" + promotionsId + "'").list();
		return !list.isEmpty() ? (PromotionsEntity) list.get(0) : null;
	}

	@Override
	public boolean add(PromotionsEntity promotions) {
		try {
			sessionFactory.getCurrentSession().save(promotions);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(PromotionsEntity promotions) {
		try {
			sessionFactory.getCurrentSession().update(promotions);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String promotionsId) {
		try {
			sessionFactory.getCurrentSession().createQuery("update PromotionsEntity set promotionStatus=" + false
					+ " where promotionsId='" + promotionsId + "'").executeUpdate();
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

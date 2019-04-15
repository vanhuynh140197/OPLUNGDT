package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.PositionsDAO;
import com.oplungdienthoai.model.PositionsEntity;

@Transactional
@Repository
public class PositionsDAOImpl implements PositionsDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<PositionsEntity> getAll() {
		return sessionFactory.getCurrentSession().createQuery("from PositionsEntity where positionsStatus=" + true + "")
				.list();
	}

	@Override
	public PositionsEntity getPositions(String positonsId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from PositionsEntity where positonsId='" + positonsId + "'").list();
		return !list.isEmpty() ? (PositionsEntity) list.get(0) : null;
	}

	@Override
	public boolean add(PositionsEntity positons) {
		try {
			sessionFactory.getCurrentSession().save(positons);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(PositionsEntity positons) {
		try {
			sessionFactory.getCurrentSession().update(positons);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String positonsId) {
		try {
			sessionFactory.getCurrentSession().createQuery(
					"update PositionsEntity set positionsStatus=" + false + " where positonsId='" + positonsId + "'")
					.executeUpdate();
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

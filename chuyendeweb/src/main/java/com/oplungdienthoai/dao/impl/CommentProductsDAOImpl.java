package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.CommentProductsDAO;
import com.oplungdienthoai.model.CommentProductsEntity;

@Transactional
@Repository
public class CommentProductsDAOImpl implements CommentProductsDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<CommentProductsEntity> getAll() {
		return sessionFactory.getCurrentSession().createQuery("from CommentProductsEntity").list();
	}

	@Override
	public CommentProductsEntity getCommentProducts(String commentId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from CommentProductsEntity where commentId='" + commentId + "'").list();
		return !list.isEmpty() ? (CommentProductsEntity) list.get(0) : null;
	}

	@Override
	public boolean add(CommentProductsEntity commentProducts) {
		try {
			sessionFactory.getCurrentSession().save(commentProducts);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(CommentProductsEntity commentProducts) {
		try {
			sessionFactory.getCurrentSession().update(commentProducts);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String commentId) {
		try {
			sessionFactory.getCurrentSession().delete(getCommentProducts(commentId));
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

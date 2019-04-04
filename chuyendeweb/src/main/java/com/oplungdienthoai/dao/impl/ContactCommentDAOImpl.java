package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.ContactCommentDAO;
import com.oplungdienthoai.model.ContactCommentEntity;

@Transactional
@Repository
public class ContactCommentDAOImpl implements ContactCommentDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<ContactCommentEntity> getAll() {
		return sessionFactory.getCurrentSession().createQuery("from ContactCommentEntity where contactStatus='" + 1 + "'").list();
	}

	@Override
	public ContactCommentEntity getContactComment(String contactId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from ContactCommentEntity where contactId='" + contactId + "'").list();
		return !list.isEmpty() ? (ContactCommentEntity) list.get(0) : null;
	}

	@Override
	public boolean add(ContactCommentEntity contactComment) {
		try {
			sessionFactory.getCurrentSession().save(contactComment);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(ContactCommentEntity contactComment) {
		try {
			sessionFactory.getCurrentSession().update(contactComment);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String contactId) {
		try {
			sessionFactory.getCurrentSession()
					.createQuery("update ContactCommentEntity set contactStatus='" + 0 + "' where contactId='" + contactId + "'")
					.executeUpdate();
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

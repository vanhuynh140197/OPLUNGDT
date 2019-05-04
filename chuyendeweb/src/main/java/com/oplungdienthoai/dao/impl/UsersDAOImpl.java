package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.UsersDAO;
import com.oplungdienthoai.model.UsersEntity;

@Transactional
@Repository
public class UsersDAOImpl implements UsersDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<UsersEntity> getAll() {
		return sessionFactory.getCurrentSession().createQuery("from UsersEntity where usersStatus=" + false + "")
				.list();
	}

	@Override
	public UsersEntity getUsers(String userId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from UsersEntity where userId='" + userId + "' and usersStatus=" + false + "").list();
		return !list.isEmpty() ? (UsersEntity) list.get(0) : null;
	}

	@Override
	public UsersEntity getUsersName(String userName) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from UsersEntity where userName='" + userName + "'").list();
		return !list.isEmpty() ? (UsersEntity) list.get(0) : null;
	}

	@Override
	public boolean add(UsersEntity user) {
		try {
			sessionFactory.getCurrentSession().save(user);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(UsersEntity user) {
		try {
			sessionFactory.getCurrentSession().update(user);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String userId) {
		try {
			sessionFactory.getCurrentSession()
					.createQuery("update UsersEntity set usersStatus=" + true + " where userId='" + userId + "'")
					.executeUpdate();
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean update(String email, Boolean daxacnhan) {
		try {
			sessionFactory.getCurrentSession()
					.createQuery(
							"update UsersEntity set validateEmail=" + daxacnhan + " where userName='" + email + "'")
					.executeUpdate();
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

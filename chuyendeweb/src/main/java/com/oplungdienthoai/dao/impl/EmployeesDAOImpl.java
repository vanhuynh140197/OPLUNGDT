package com.oplungdienthoai.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oplungdienthoai.dao.EmployeesDAO;
import com.oplungdienthoai.model.EmployeesEntity;

@Transactional
@Repository
public class EmployeesDAOImpl implements EmployeesDAO {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<EmployeesEntity> getAll() {
		return sessionFactory.getCurrentSession().createQuery("from EmployeesEntity where employeesStatus=" + true + "")
				.list();
	}

	@Override
	public EmployeesEntity getEmployees(String employeesId) {
		@SuppressWarnings("rawtypes")
		List list = sessionFactory.getCurrentSession()
				.createQuery("from EmployeesEntity where employeesId='" + employeesId + "'").list();
		return !list.isEmpty() ? (EmployeesEntity) list.get(0) : null;
	}

	@Override
	public boolean add(EmployeesEntity employees) {
		try {
			sessionFactory.getCurrentSession().save(employees);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean edit(EmployeesEntity employees) {
		try {
			sessionFactory.getCurrentSession().update(employees);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean remove(String employeesId) {
		try {
			sessionFactory.getCurrentSession().createQuery(
					"update EmployeesEntity set employeesStatus=" + false + " where employeesId='" + employeesId + "'")
					.executeUpdate();
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}

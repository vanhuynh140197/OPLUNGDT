package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.EmployeesDAO;
import com.oplungdienthoai.model.EmployeesEntity;
import com.oplungdienthoai.services.EmployeesService;

@Service
public class EmployeesServiceImpl implements EmployeesService {

	@Autowired
	EmployeesDAO employeesDAO;

	@Override
	public List<EmployeesEntity> getAll() {
		return employeesDAO.getAll();
	}

	@Override
	public EmployeesEntity getEmployees(String employeesId) {
		return employeesDAO.getEmployees(employeesId);
	}

	@Override
	public boolean add(EmployeesEntity employees) {
		return employeesDAO.add(employees);
	}

	@Override
	public boolean edit(EmployeesEntity employees) {
		return employeesDAO.edit(employees);
	}

	@Override
	public boolean remove(String employeesId) {
		return employeesDAO.remove(employeesId);
	}
}

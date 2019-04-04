package com.oplungdienthoai.services;

import java.util.List;

import com.oplungdienthoai.model.EmployeesEntity;

public interface EmployeesService {

	public List<EmployeesEntity> getAll();

	public EmployeesEntity getEmployees(String employeesId);

	public boolean add(EmployeesEntity employees);

	public boolean edit(EmployeesEntity employees);

	public boolean remove(String employeesId);
}

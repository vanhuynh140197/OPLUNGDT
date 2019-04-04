package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.ProvidersDAO;
import com.oplungdienthoai.model.ProvidersEntity;
import com.oplungdienthoai.services.ProvidersService;

@Service
public class ProvidersServiceImpl implements ProvidersService {

	@Autowired
	ProvidersDAO providersDAO;

	@Override
	public List<ProvidersEntity> getAll() {
		return providersDAO.getAll();
	}

	@Override
	public ProvidersEntity getProviders(String providersId) {
		return providersDAO.getProviders(providersId);
	}

	@Override
	public boolean add(ProvidersEntity providers) {
		return providersDAO.add(providers);
	}

	@Override
	public boolean edit(ProvidersEntity providers) {
		return providersDAO.edit(providers);
	}

	@Override
	public boolean remove(String providersId) {
		return providersDAO.remove(providersId);
	}
}

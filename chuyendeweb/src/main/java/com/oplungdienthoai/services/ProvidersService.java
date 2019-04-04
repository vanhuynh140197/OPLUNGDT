package com.oplungdienthoai.services;

import java.util.List;

import com.oplungdienthoai.model.ProvidersEntity;

public interface ProvidersService {

	public List<ProvidersEntity> getAll();

	public ProvidersEntity getProviders(String providersId);

	public boolean add(ProvidersEntity providers);

	public boolean edit(ProvidersEntity providers);

	public boolean remove(String providersId);
}

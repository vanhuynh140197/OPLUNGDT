package com.oplungdienthoai.dao;

import java.util.List;

import com.oplungdienthoai.model.ProvidersEntity;

public interface ProvidersDAO {

	public List<ProvidersEntity> getAll();

	public ProvidersEntity getProviders(String providersId);

	public boolean add(ProvidersEntity providers);

	public boolean edit(ProvidersEntity providers);

	public boolean remove(String providersId);
}

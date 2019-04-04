package com.oplungdienthoai.dao;

import java.util.List;

import com.oplungdienthoai.model.PricesEntity;

public interface PricesDAO {

	public List<PricesEntity> getAll();

	public PricesEntity getPrices(String pricesId);

	public boolean add(PricesEntity prices);

	public boolean edit(PricesEntity prices);

	public boolean remove(String pricesId);
}

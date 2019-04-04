package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.PricesDAO;
import com.oplungdienthoai.model.PricesEntity;
import com.oplungdienthoai.services.PricesService;

@Service
public class PricesServiceImpl implements PricesService {

	@Autowired
	PricesDAO pricesDAO;

	@Override
	public List<PricesEntity> getAll() {
		return pricesDAO.getAll();
	}

	@Override
	public PricesEntity getPrices(String pricesId) {
		return pricesDAO.getPrices(pricesId);
	}

	@Override
	public boolean add(PricesEntity prices) {
		return pricesDAO.add(prices);
	}

	@Override
	public boolean edit(PricesEntity prices) {
		return pricesDAO.edit(prices);
	}

	@Override
	public boolean remove(String pricesId) {
		return pricesDAO.remove(pricesId);
	}
}

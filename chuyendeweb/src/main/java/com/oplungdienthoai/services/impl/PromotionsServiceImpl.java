package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.PromotionsDAO;
import com.oplungdienthoai.model.PromotionsEntity;
import com.oplungdienthoai.services.PromotionsService;

@Service
public class PromotionsServiceImpl implements PromotionsService {

	@Autowired
	PromotionsDAO promotionsDAO;

	@Override
	public List<PromotionsEntity> getAll() {
		return promotionsDAO.getAll();
	}

	@Override
	public PromotionsEntity getPromotions(String promotionsId) {
		return promotionsDAO.getPromotions(promotionsId);
	}

	@Override
	public boolean add(PromotionsEntity promotions) {
		return promotionsDAO.add(promotions);
	}

	@Override
	public boolean edit(PromotionsEntity promotions) {
		return promotionsDAO.edit(promotions);
	}

	@Override
	public boolean remove(String promotionsId) {
		return promotionsDAO.remove(promotionsId);
	}
}

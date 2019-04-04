package com.oplungdienthoai.dao;

import java.util.List;

import com.oplungdienthoai.model.PromotionsEntity;

public interface PromotionsDAO {

	public List<PromotionsEntity> getAll();

	public PromotionsEntity getPromotions(String promotionsId);

	public boolean add(PromotionsEntity promotions);

	public boolean edit(PromotionsEntity promotions);

	public boolean remove(String promotionsId);
}

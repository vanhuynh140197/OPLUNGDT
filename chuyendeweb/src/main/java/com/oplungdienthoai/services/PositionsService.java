package com.oplungdienthoai.services;

import java.util.List;

import com.oplungdienthoai.model.PositionsEntity;

public interface PositionsService {

	public List<PositionsEntity> getAll();

	public PositionsEntity getPositions(String positonsId);

	public boolean add(PositionsEntity positons);

	public boolean edit(PositionsEntity positons);

	public boolean remove(String positonsId);
}

package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.PositionsDAO;
import com.oplungdienthoai.model.PositionsEntity;
import com.oplungdienthoai.services.PositionsService;

@Service
public class PositionsServiceImpl implements PositionsService {

	@Autowired
	PositionsDAO positionsDAO;

	@Override
	public List<PositionsEntity> getAll() {
		return positionsDAO.getAll();
	}

	@Override
	public PositionsEntity getPositions(String positonsId) {
		return positionsDAO.getPositions(positonsId);
	}

	@Override
	public boolean add(PositionsEntity positons) {
		return positionsDAO.add(positons);
	}

	@Override
	public boolean edit(PositionsEntity positons) {
		return positionsDAO.edit(positons);
	}

	@Override
	public boolean remove(String positonsId) {
		return positionsDAO.remove(positonsId);
	}
}

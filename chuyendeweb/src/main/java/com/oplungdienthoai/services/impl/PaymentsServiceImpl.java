package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.PaymentsDAO;
import com.oplungdienthoai.model.PaymentsEntity;
import com.oplungdienthoai.services.PaymentsService;

@Service
public class PaymentsServiceImpl implements PaymentsService {
	@Autowired
	PaymentsDAO paymentsDAO;

	@Override
	public List<PaymentsEntity> getAll() {
		return paymentsDAO.getAll();
	}

	@Override
	public PaymentsEntity getPayments(String paymentsId) {
		return paymentsDAO.getPayments(paymentsId);
	}

	@Override
	public boolean add(PaymentsEntity payments) {
		return paymentsDAO.add(payments);
	}

	@Override
	public boolean edit(PaymentsEntity payments) {
		return paymentsDAO.edit(payments);
	}

	@Override
	public boolean remove(String paymentsId) {
		return paymentsDAO.remove(paymentsId);
	}

}

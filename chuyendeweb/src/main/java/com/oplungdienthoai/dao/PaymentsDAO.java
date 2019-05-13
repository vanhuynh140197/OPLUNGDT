package com.oplungdienthoai.dao;

import java.util.List;

import com.oplungdienthoai.model.PaymentsEntity;

public interface PaymentsDAO {

	public List<PaymentsEntity> getAll();

	public PaymentsEntity getPayments(String paymentsId);

	public boolean add(PaymentsEntity payments);

	public boolean edit(PaymentsEntity payments);

	public boolean remove(String paymentsId);
}

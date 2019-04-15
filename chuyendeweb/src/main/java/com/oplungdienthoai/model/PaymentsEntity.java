package com.oplungdienthoai.model;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "payments", schema = "public", catalog = "oplungdienthoai")
public class PaymentsEntity {
	private String paymentsId;
	private String paymentsName;
	private String paymentsDescription;
	private Collection<OrdersEntity> ordersByPaymentsId;

	@Id
	@Column(name = "paymentsid")
	public String getPaymentsId() {
		return paymentsId;
	}

	public void setPaymentsId(String paymentsId) {
		this.paymentsId = paymentsId;
	}

	@Basic
	@Column(name = "paymentsname")
	public String getPaymentsName() {
		return paymentsName;
	}

	public void setPaymentsName(String paymentsName) {
		this.paymentsName = paymentsName;
	}

	@Basic
	@Column(name = "paymentsdescription")
	public String getPaymentsDescription() {
		return paymentsDescription;
	}

	public void setPaymentsDescription(String paymentsDescription) {
		this.paymentsDescription = paymentsDescription;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		PaymentsEntity that = (PaymentsEntity) o;

		if (paymentsId != null ? !paymentsId.equals(that.paymentsId) : that.paymentsId != null)
			return false;
		if (paymentsName != null ? !paymentsName.equals(that.paymentsName) : that.paymentsName != null)
			return false;
		if (paymentsDescription != null ? !paymentsDescription.equals(that.paymentsDescription)
				: that.paymentsDescription != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		int result = paymentsId != null ? paymentsId.hashCode() : 0;
		result = 31 * result + (paymentsName != null ? paymentsName.hashCode() : 0);
		result = 31 * result + (paymentsDescription != null ? paymentsDescription.hashCode() : 0);
		return result;
	}

	@OneToMany(mappedBy = "paymentsByPaymentsId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	public Collection<OrdersEntity> getOrdersByPaymentsId() {
		return ordersByPaymentsId;
	}

	public void setOrdersByPaymentsId(Collection<OrdersEntity> ordersByPaymentsId) {
		this.ordersByPaymentsId = ordersByPaymentsId;
	}
}

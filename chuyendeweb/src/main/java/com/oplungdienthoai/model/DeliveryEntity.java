package com.oplungdienthoai.model;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "delivery", schema = "public", catalog = "oplungdienthoai")
public class DeliveryEntity {
	private String deliveryId;
	private String deliveryName;
	private Double salary;
	private Collection<EmployeesEntity> employeesByDeliveryId;

	@Id
	@Column(name = "DeliveryID")
	public String getDeliveryId() {
		return deliveryId;
	}

	public void setDeliveryId(String deliveryId) {
		this.deliveryId = deliveryId;
	}

	@Basic
	@Column(name = "DeliveryName")
	public String getDeliveryName() {
		return deliveryName;
	}

	public void setDeliveryName(String deliveryName) {
		this.deliveryName = deliveryName;
	}

	@Basic
	@Column(name = "Salary")
	public Double getSalary() {
		return salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		DeliveryEntity that = (DeliveryEntity) o;

		if (deliveryId != null ? !deliveryId.equals(that.deliveryId) : that.deliveryId != null)
			return false;
		if (deliveryName != null ? !deliveryName.equals(that.deliveryName) : that.deliveryName != null)
			return false;
		if (salary != null ? !salary.equals(that.salary) : that.salary != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		int result = deliveryId != null ? deliveryId.hashCode() : 0;
		result = 31 * result + (deliveryName != null ? deliveryName.hashCode() : 0);
		result = 31 * result + (salary != null ? salary.hashCode() : 0);
		return result;
	}

	@OneToMany(mappedBy = "deliveryByDeliveryId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	public Collection<EmployeesEntity> getEmployeesByDeliveryId() {
		return employeesByDeliveryId;
	}

	public void setEmployeesByDeliveryId(Collection<EmployeesEntity> employeesByDeliveryId) {
		this.employeesByDeliveryId = employeesByDeliveryId;
	}
}

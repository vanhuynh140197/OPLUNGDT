package com.oplungdienthoai.model;

import javax.persistence.*;
import java.sql.Date;
import java.util.Collection;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "customers", schema = "public", catalog = "oplungdienthoai")
public class CustomersEntity {
	private String customersId;
	private String customersName;
	private String email;
	private String phone;
	private Date dateBirth;
	private String address;
	private Boolean customersStatus;
	private Collection<CommentProductsEntity> commentProductsByCustomersId;
	private Collection<OrdersEntity> ordersByCustomersId;

	@Id
	@Column(name = "CustomersID")
	public String getCustomersId() {
		return customersId;
	}

	public void setCustomersId(String customersId) {
		this.customersId = customersId;
	}

	@Basic
	@Column(name = "CustomersName")
	public String getCustomersName() {
		return customersName;
	}

	public void setCustomersName(String customersName) {
		this.customersName = customersName;
	}

	@Basic
	@Column(name = "Email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Basic
	@Column(name = "Phone")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Basic
	@Column(name = "DateBirth")
	public Date getDateBirth() {
		return dateBirth;
	}

	public void setDateBirth(Date dateBirth) {
		this.dateBirth = dateBirth;
	}

	@Basic
	@Column(name = "Address")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Basic
	@Column(name = "CustomersStatus")
	public Boolean getCustomersStatus() {
		return customersStatus;
	}

	public void setCustomersStatus(Boolean customersStatus) {
		this.customersStatus = customersStatus;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		CustomersEntity that = (CustomersEntity) o;

		if (customersId != null ? !customersId.equals(that.customersId) : that.customersId != null)
			return false;
		if (customersName != null ? !customersName.equals(that.customersName) : that.customersName != null)
			return false;
		if (email != null ? !email.equals(that.email) : that.email != null)
			return false;
		if (phone != null ? !phone.equals(that.phone) : that.phone != null)
			return false;
		if (dateBirth != null ? !dateBirth.equals(that.dateBirth) : that.dateBirth != null)
			return false;
		if (address != null ? !address.equals(that.address) : that.address != null)
			return false;
		if (customersStatus != null ? !customersStatus.equals(that.customersStatus) : that.customersStatus != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		int result = customersId != null ? customersId.hashCode() : 0;
		result = 31 * result + (customersName != null ? customersName.hashCode() : 0);
		result = 31 * result + (email != null ? email.hashCode() : 0);
		result = 31 * result + (phone != null ? phone.hashCode() : 0);
		result = 31 * result + (dateBirth != null ? dateBirth.hashCode() : 0);
		result = 31 * result + (address != null ? address.hashCode() : 0);
		result = 31 * result + (customersStatus != null ? customersStatus.hashCode() : 0);
		return result;
	}

	@OneToMany(mappedBy = "customersByCustomersId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	public Collection<CommentProductsEntity> getCommentProductsByCustomersId() {
		return commentProductsByCustomersId;
	}

	public void setCommentProductsByCustomersId(Collection<CommentProductsEntity> commentProductsByCustomersId) {
		this.commentProductsByCustomersId = commentProductsByCustomersId;
	}

	@OneToMany(mappedBy = "customersByCustomersId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	public Collection<OrdersEntity> getOrdersByCustomersId() {
		return ordersByCustomersId;
	}

	public void setOrdersByCustomersId(Collection<OrdersEntity> ordersByCustomersId) {
		this.ordersByCustomersId = ordersByCustomersId;
	}
}

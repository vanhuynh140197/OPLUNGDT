package com.oplungdienthoai.model;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "product_types", schema = "public", catalog = "oplungdienthoai")
public class ProductTypesEntity {
	private String productTypesId;
	private String productTypesName;
	private String providersId;
	private Boolean productTypesStatus;
	private ProvidersEntity providersByProvidersId;
	private Collection<ProductsEntity> productsByProductTypesId;

	@Id
	@Column(name = "producttypesid")
	public String getProductTypesId() {
		return productTypesId;
	}

	public void setProductTypesId(String productTypesId) {
		this.productTypesId = productTypesId;
	}

	@Basic
	@Column(name = "producttypesname")
	public String getProductTypesName() {
		return productTypesName;
	}

	public void setProductTypesName(String productTypesName) {
		this.productTypesName = productTypesName;
	}

	@Basic
	@Column(name = "providersid")
	public String getProvidersId() {
		return providersId;
	}

	public void setProvidersId(String providersId) {
		this.providersId = providersId;
	}

	@Basic
	@Column(name = "producttypestatus")
	public Boolean getProductTypesStatus() {
		return productTypesStatus;
	}

	public void setProductTypesStatus(Boolean productTypesStatus) {
		this.productTypesStatus = productTypesStatus;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		ProductTypesEntity that = (ProductTypesEntity) o;

		if (productTypesId != null ? !productTypesId.equals(that.productTypesId) : that.productTypesId != null)
			return false;
		if (productTypesName != null ? !productTypesName.equals(that.productTypesName) : that.productTypesName != null)
			return false;
		if (providersId != null ? !providersId.equals(that.providersId) : that.providersId != null)
			return false;
		if (productTypesStatus != null ? !productTypesStatus.equals(that.productTypesStatus)
				: that.productTypesStatus != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		int result = productTypesId != null ? productTypesId.hashCode() : 0;
		result = 31 * result + (productTypesName != null ? productTypesName.hashCode() : 0);
		result = 31 * result + (providersId != null ? providersId.hashCode() : 0);
		result = 31 * result + (productTypesStatus != null ? productTypesStatus.hashCode() : 0);
		return result;
	}

	@ManyToOne
	@JoinColumn(name = "providersid", referencedColumnName = "providersid", nullable = false, insertable = false, updatable = false)
	public ProvidersEntity getProvidersByProvidersId() {
		return providersByProvidersId;
	}

	public void setProvidersByProvidersId(ProvidersEntity providersByProvidersId) {
		this.providersByProvidersId = providersByProvidersId;
	}

	@OneToMany(mappedBy = "productTypesByProductTypesId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	public Collection<ProductsEntity> getProductsByProductTypesId() {
		return productsByProductTypesId;
	}

	public void setProductsByProductTypesId(Collection<ProductsEntity> productsByProductTypesId) {
		this.productsByProductTypesId = productsByProductTypesId;
	}
}

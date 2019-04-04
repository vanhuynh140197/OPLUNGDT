package com.oplungdienthoai.model;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "providers", schema = "public", catalog = "oplungdienthoai")
public class ProvidersEntity {
	private String providersId;
	private String providersName;
	private Boolean providerStatus;
	private Collection<ProductTypesEntity> productTypesByProvidersId;

	@Id
	@Column(name = "ProvidersID")
	public String getProvidersId() {
		return providersId;
	}

	public void setProvidersId(String providersId) {
		this.providersId = providersId;
	}

	@Basic
	@Column(name = "ProvidersName")
	public String getProvidersName() {
		return providersName;
	}

	public void setProvidersName(String providersName) {
		this.providersName = providersName;
	}

	@Basic
	@Column(name = "ProviderStatus")
	public Boolean getProviderStatus() {
		return providerStatus;
	}

	public void setProviderStatus(Boolean providerStatus) {
		this.providerStatus = providerStatus;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		ProvidersEntity that = (ProvidersEntity) o;

		if (providersId != null ? !providersId.equals(that.providersId) : that.providersId != null)
			return false;
		if (providersName != null ? !providersName.equals(that.providersName) : that.providersName != null)
			return false;
		if (providerStatus != null ? !providerStatus.equals(that.providerStatus) : that.providerStatus != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		int result = providersId != null ? providersId.hashCode() : 0;
		result = 31 * result + (providersName != null ? providersName.hashCode() : 0);
		result = 31 * result + (providerStatus != null ? providerStatus.hashCode() : 0);
		return result;
	}

	@OneToMany(mappedBy = "providersByProvidersId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	public Collection<ProductTypesEntity> getProductTypesByProvidersId() {
		return productTypesByProvidersId;
	}

	public void setProductTypesByProvidersId(Collection<ProductTypesEntity> productTypesByProvidersId) {
		this.productTypesByProvidersId = productTypesByProvidersId;
	}
}

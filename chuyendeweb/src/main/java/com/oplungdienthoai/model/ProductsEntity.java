package com.oplungdienthoai.model;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "products", schema = "public", catalog = "oplungdienthoai")
public class ProductsEntity {
	private String productsId;
	private String productsName;
	private String productsImages1;
	private String productsImages2;
	private String productsColor;
	private Integer amount;
	private String description;
	private String productTypesId;
	private Boolean productsStatus;
	private Collection<OrderDetailsEntity> orderDetailsByProductsId;
	private Collection<PricesEntity> pricesByProductsId;
	private ProductTypesEntity productTypesByProductTypesId;
	private Collection<PromotionsEntity> promotionsByProductsId;

	@Id
	@Column(name = "ProductsID")
	public String getProductsId() {
		return productsId;
	}

	public void setProductsId(String productsId) {
		this.productsId = productsId;
	}

	@Basic
	@Column(name = "ProductsName")
	public String getProductsName() {
		return productsName;
	}

	public void setProductsName(String productsName) {
		this.productsName = productsName;
	}

	@Basic
	@Column(name = "ProductsImages1")
	public String getProductsImages1() {
		return productsImages1;
	}

	public void setProductsImages1(String productsImages1) {
		this.productsImages1 = productsImages1;
	}

	@Basic
	@Column(name = "ProductsImages2")
	public String getProductsImages2() {
		return productsImages2;
	}

	public void setProductsImages2(String productsImages2) {
		this.productsImages2 = productsImages2;
	}

	@Basic
	@Column(name = "ProductsColor")
	public String getProductsColor() {
		return productsColor;
	}

	public void setProductsColor(String productsColor) {
		this.productsColor = productsColor;
	}

	@Basic
	@Column(name = "Amount", nullable = true)
	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	@Basic
	@Column(name = "Description")
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Basic
	@Column(name = "ProductTypesID")
	public String getProductTypesId() {
		return productTypesId;
	}

	public void setProductTypesId(String productTypesId) {
		this.productTypesId = productTypesId;
	}

	@Basic
	@Column(name = "ProductsStatus")
	public Boolean getProductsStatus() {
		return productsStatus;
	}

	public void setProductsStatus(Boolean productsStatus) {
		this.productsStatus = productsStatus;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		ProductsEntity that = (ProductsEntity) o;

		if (productsId != null ? !productsId.equals(that.productsId) : that.productsId != null)
			return false;
		if (productsName != null ? !productsName.equals(that.productsName) : that.productsName != null)
			return false;
		if (productsImages1 != null ? !productsImages1.equals(that.productsImages1) : that.productsImages1 != null)
			return false;
		if (productsImages2 != null ? !productsImages2.equals(that.productsImages2) : that.productsImages2 != null)
			return false;
		if (productsColor != null ? !productsColor.equals(that.productsColor) : that.productsColor != null)
			return false;
		if (amount != null ? !amount.equals(that.amount) : that.amount != null)
			return false;
		if (description != null ? !description.equals(that.description) : that.description != null)
			return false;
		if (productTypesId != null ? !productTypesId.equals(that.productTypesId) : that.productTypesId != null)
			return false;
		if (productsStatus != null ? !productsStatus.equals(that.productsStatus) : that.productsStatus != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		int result = productsId != null ? productsId.hashCode() : 0;
		result = 31 * result + (productsName != null ? productsName.hashCode() : 0);
		result = 31 * result + (productsImages1 != null ? productsImages1.hashCode() : 0);
		result = 31 * result + (productsImages2 != null ? productsImages2.hashCode() : 0);
		result = 31 * result + (productsColor != null ? productsColor.hashCode() : 0);
		result = 31 * result + (amount != null ? amount.hashCode() : 0);
		result = 31 * result + (description != null ? description.hashCode() : 0);
		result = 31 * result + (productTypesId != null ? productTypesId.hashCode() : 0);
		result = 31 * result + (productsStatus != null ? productsStatus.hashCode() : 0);
		return result;
	}

	@OneToMany(mappedBy = "productsByProductsId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	public Collection<OrderDetailsEntity> getOrderDetailsByProductsId() {
		return orderDetailsByProductsId;
	}

	public void setOrderDetailsByProductsId(Collection<OrderDetailsEntity> orderDetailsByProductsId) {
		this.orderDetailsByProductsId = orderDetailsByProductsId;
	}

	@OneToMany(mappedBy = "productsByProductsId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	public Collection<PricesEntity> getPricesByProductsId() {
		return pricesByProductsId;
	}

	public void setPricesByProductsId(Collection<PricesEntity> pricesByProductsId) {
		this.pricesByProductsId = pricesByProductsId;
	}

	@ManyToOne
	@JoinColumn(name = "ProductTypesID", referencedColumnName = "ProductTypesID", nullable = false, insertable = false, updatable = false)
	public ProductTypesEntity getProductTypesByProductTypesId() {
		return productTypesByProductTypesId;
	}

	public void setProductTypesByProductTypesId(ProductTypesEntity productTypesByProductTypesId) {
		this.productTypesByProductTypesId = productTypesByProductTypesId;
	}

	@OneToMany(mappedBy = "productsByProductsId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	public Collection<PromotionsEntity> getPromotionsByProductsId() {
		return promotionsByProductsId;
	}

	public void setPromotionsByProductsId(Collection<PromotionsEntity> promotionsByProductsId) {
		this.promotionsByProductsId = promotionsByProductsId;
	}
}

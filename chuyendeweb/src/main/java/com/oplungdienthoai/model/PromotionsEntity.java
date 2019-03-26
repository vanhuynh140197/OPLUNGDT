package com.oplungdienthoai.model;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "promotions", schema = "public", catalog = "oplungdienthoai")
public class PromotionsEntity {
    private String promotionsId;
    private String promotionsName;
    private String productsId;
    private String promotionsDescription;
    private Double promotionValues;
    private Date dateStart;
    private Date dateEnd;
    private Boolean promotionStatus;
    private ProductsEntity productsByProductsId;

    @Id
    @Column(name = "PromotionsID")
    public String getPromotionsId() {
        return promotionsId;
    }

    public void setPromotionsId(String promotionsId) {
        this.promotionsId = promotionsId;
    }

    @Basic
    @Column(name = "PromotionsName")
    public String getPromotionsName() {
        return promotionsName;
    }

    public void setPromotionsName(String promotionsName) {
        this.promotionsName = promotionsName;
    }

    @Basic
    @Column(name = "ProductsID")
    public String getProductsId() {
        return productsId;
    }

    public void setProductsId(String productsId) {
        this.productsId = productsId;
    }

    @Basic
    @Column(name = "PromotionsDescription")
    public String getPromotionsDescription() {
        return promotionsDescription;
    }

    public void setPromotionsDescription(String promotionsDescription) {
        this.promotionsDescription = promotionsDescription;
    }

    @Basic
    @Column(name = "PromotionValues")
    public Double getPromotionValues() {
        return promotionValues;
    }

    public void setPromotionValues(Double promotionValues) {
        this.promotionValues = promotionValues;
    }

    @Basic
    @Column(name = "DateStart")
    public Date getDateStart() {
        return dateStart;
    }

    public void setDateStart(Date dateStart) {
        this.dateStart = dateStart;
    }

    @Basic
    @Column(name = "DateEnd")
    public Date getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(Date dateEnd) {
        this.dateEnd = dateEnd;
    }

    @Basic
    @Column(name = "PromotionStatus")
    public Boolean getPromotionStatus() {
        return promotionStatus;
    }

    public void setPromotionStatus(Boolean promotionStatus) {
        this.promotionStatus = promotionStatus;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PromotionsEntity that = (PromotionsEntity) o;

        if (promotionsId != null ? !promotionsId.equals(that.promotionsId) : that.promotionsId != null) return false;
        if (promotionsName != null ? !promotionsName.equals(that.promotionsName) : that.promotionsName != null)
            return false;
        if (productsId != null ? !productsId.equals(that.productsId) : that.productsId != null) return false;
        if (promotionsDescription != null ? !promotionsDescription.equals(that.promotionsDescription) : that.promotionsDescription != null)
            return false;
        if (promotionValues != null ? !promotionValues.equals(that.promotionValues) : that.promotionValues != null)
            return false;
        if (dateStart != null ? !dateStart.equals(that.dateStart) : that.dateStart != null) return false;
        if (dateEnd != null ? !dateEnd.equals(that.dateEnd) : that.dateEnd != null) return false;
        if (promotionStatus != null ? !promotionStatus.equals(that.promotionStatus) : that.promotionStatus != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = promotionsId != null ? promotionsId.hashCode() : 0;
        result = 31 * result + (promotionsName != null ? promotionsName.hashCode() : 0);
        result = 31 * result + (productsId != null ? productsId.hashCode() : 0);
        result = 31 * result + (promotionsDescription != null ? promotionsDescription.hashCode() : 0);
        result = 31 * result + (promotionValues != null ? promotionValues.hashCode() : 0);
        result = 31 * result + (dateStart != null ? dateStart.hashCode() : 0);
        result = 31 * result + (dateEnd != null ? dateEnd.hashCode() : 0);
        result = 31 * result + (promotionStatus != null ? promotionStatus.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "ProductsID", referencedColumnName = "ProductsID", nullable = false,insertable = false,updatable = false)
    public ProductsEntity getProductsByProductsId() {
        return productsByProductsId;
    }

    public void setProductsByProductsId(ProductsEntity productsByProductsId) {
        this.productsByProductsId = productsByProductsId;
    }
}

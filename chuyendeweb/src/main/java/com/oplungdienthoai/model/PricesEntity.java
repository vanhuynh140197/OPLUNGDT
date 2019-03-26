package com.oplungdienthoai.model;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "prices", schema = "public", catalog = "oplungdienthoai")
public class PricesEntity {
    private String pricesId;
    private String productsId;
    private Double prices;
    private Date dateStart;
    private Date dateEnd;
    private ProductsEntity productsByProductsId;

    @Id
    @Column(name = "PricesID")
    public String getPricesId() {
        return pricesId;
    }

    public void setPricesId(String pricesId) {
        this.pricesId = pricesId;
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
    @Column(name = "Prices")
    public Double getPrices() {
        return prices;
    }

    public void setPrices(Double prices) {
        this.prices = prices;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PricesEntity that = (PricesEntity) o;

        if (pricesId != null ? !pricesId.equals(that.pricesId) : that.pricesId != null) return false;
        if (productsId != null ? !productsId.equals(that.productsId) : that.productsId != null) return false;
        if (prices != null ? !prices.equals(that.prices) : that.prices != null) return false;
        if (dateStart != null ? !dateStart.equals(that.dateStart) : that.dateStart != null) return false;
        if (dateEnd != null ? !dateEnd.equals(that.dateEnd) : that.dateEnd != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = pricesId != null ? pricesId.hashCode() : 0;
        result = 31 * result + (productsId != null ? productsId.hashCode() : 0);
        result = 31 * result + (prices != null ? prices.hashCode() : 0);
        result = 31 * result + (dateStart != null ? dateStart.hashCode() : 0);
        result = 31 * result + (dateEnd != null ? dateEnd.hashCode() : 0);
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

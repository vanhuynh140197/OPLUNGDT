package com.oplungdienthoai.model;

import javax.persistence.*;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "order_details", schema = "public", catalog = "oplungdienthoai")
@IdClass(OrderDetailsEntityPK.class)
public class OrderDetailsEntity {
    private String ordersId;
    private String productsId;
    private Integer amount;
    private Double totalPrices;
    private OrdersEntity ordersByOrdersId;
    private ProductsEntity productsByProductsId;

    @Id
    @Column(name = "OrdersID")
    public String getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(String ordersId) {
        this.ordersId = ordersId;
    }

    @Id
    @Column(name = "ProductsID")
    public String getProductsId() {
        return productsId;
    }

    public void setProductsId(String productsId) {
        this.productsId = productsId;
    }

    @Basic
    @Column(name = "Amount")
    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    @Basic
    @Column(name = "TotalPrices")
    public Double getTotalPrices() {
        return totalPrices;
    }

    public void setTotalPrices(Double totalPrices) {
        this.totalPrices = totalPrices;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrderDetailsEntity that = (OrderDetailsEntity) o;

        if (ordersId != null ? !ordersId.equals(that.ordersId) : that.ordersId != null) return false;
        if (productsId != null ? !productsId.equals(that.productsId) : that.productsId != null) return false;
        if (amount != null ? !amount.equals(that.amount) : that.amount != null) return false;
        if (totalPrices != null ? !totalPrices.equals(that.totalPrices) : that.totalPrices != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = ordersId != null ? ordersId.hashCode() : 0;
        result = 31 * result + (productsId != null ? productsId.hashCode() : 0);
        result = 31 * result + (amount != null ? amount.hashCode() : 0);
        result = 31 * result + (totalPrices != null ? totalPrices.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "OrdersID", referencedColumnName = "OrdersID", nullable = false,insertable = false,updatable = false)
    public OrdersEntity getOrdersByOrdersId() {
        return ordersByOrdersId;
    }

    public void setOrdersByOrdersId(OrdersEntity ordersByOrdersId) {
        this.ordersByOrdersId = ordersByOrdersId;
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

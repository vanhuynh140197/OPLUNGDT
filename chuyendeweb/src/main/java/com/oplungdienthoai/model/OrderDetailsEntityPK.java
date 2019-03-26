package com.oplungdienthoai.model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by VanHuynh on 26/03/2019.
 */
public class OrderDetailsEntityPK implements Serializable {
    private String ordersId;
    private String productsId;

    @Column(name = "OrdersID", nullable = false, length = 10)
    @Id
    public String getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(String ordersId) {
        this.ordersId = ordersId;
    }

    @Column(name = "ProductsID", nullable = false, length = 10)
    @Id
    public String getProductsId() {
        return productsId;
    }

    public void setProductsId(String productsId) {
        this.productsId = productsId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrderDetailsEntityPK that = (OrderDetailsEntityPK) o;

        if (ordersId != null ? !ordersId.equals(that.ordersId) : that.ordersId != null) return false;
        if (productsId != null ? !productsId.equals(that.productsId) : that.productsId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = ordersId != null ? ordersId.hashCode() : 0;
        result = 31 * result + (productsId != null ? productsId.hashCode() : 0);
        return result;
    }
}

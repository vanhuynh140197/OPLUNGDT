package com.oplungdienthoai.model;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "shipping_method", schema = "public", catalog = "oplungdienthoai")
public class ShippingMethodEntity {
    private String shippingId;
    private String shippingName;
    private String shippingDescription;
    private Collection<OrdersEntity> ordersByShippingId;

    @Id
    @Column(name = "ShippingID")
    public String getShippingId() {
        return shippingId;
    }

    public void setShippingId(String shippingId) {
        this.shippingId = shippingId;
    }

    @Basic
    @Column(name = "ShippingName")
    public String getShippingName() {
        return shippingName;
    }

    public void setShippingName(String shippingName) {
        this.shippingName = shippingName;
    }

    @Basic
    @Column(name = "ShippingDescription")
    public String getShippingDescription() {
        return shippingDescription;
    }

    public void setShippingDescription(String shippingDescription) {
        this.shippingDescription = shippingDescription;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ShippingMethodEntity that = (ShippingMethodEntity) o;

        if (shippingId != null ? !shippingId.equals(that.shippingId) : that.shippingId != null) return false;
        if (shippingName != null ? !shippingName.equals(that.shippingName) : that.shippingName != null) return false;
        if (shippingDescription != null ? !shippingDescription.equals(that.shippingDescription) : that.shippingDescription != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = shippingId != null ? shippingId.hashCode() : 0;
        result = 31 * result + (shippingName != null ? shippingName.hashCode() : 0);
        result = 31 * result + (shippingDescription != null ? shippingDescription.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "shippingMethodByShippingId",cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    public Collection<OrdersEntity> getOrdersByShippingId() {
        return ordersByShippingId;
    }

    public void setOrdersByShippingId(Collection<OrdersEntity> ordersByShippingId) {
        this.ordersByShippingId = ordersByShippingId;
    }
}

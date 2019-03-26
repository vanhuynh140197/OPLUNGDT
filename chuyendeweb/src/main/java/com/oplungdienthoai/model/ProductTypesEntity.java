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
    private Collection<ProductsEntity> productsByProductTypesId;

    @Id
    @Column(name = "ProductTypesID")
    public String getProductTypesId() {
        return productTypesId;
    }

    public void setProductTypesId(String productTypesId) {
        this.productTypesId = productTypesId;
    }

    @Basic
    @Column(name = "ProductTypesName")
    public String getProductTypesName() {
        return productTypesName;
    }

    public void setProductTypesName(String productTypesName) {
        this.productTypesName = productTypesName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ProductTypesEntity that = (ProductTypesEntity) o;

        if (productTypesId != null ? !productTypesId.equals(that.productTypesId) : that.productTypesId != null)
            return false;
        if (productTypesName != null ? !productTypesName.equals(that.productTypesName) : that.productTypesName != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = productTypesId != null ? productTypesId.hashCode() : 0;
        result = 31 * result + (productTypesName != null ? productTypesName.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "productTypesByProductTypesId",cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    public Collection<ProductsEntity> getProductsByProductTypesId() {
        return productsByProductTypesId;
    }

    public void setProductsByProductTypesId(Collection<ProductsEntity> productsByProductTypesId) {
        this.productsByProductTypesId = productsByProductTypesId;
    }
}

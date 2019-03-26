package com.oplungdienthoai.model;

import javax.persistence.*;
import java.sql.Date;
import java.util.Collection;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "orders", schema = "public", catalog = "oplungdienthoai")
public class OrdersEntity {
    private String ordersId;
    private Date dateStartOrder;
    private String customersId;
    private String orderDescriptions;
    private double totalPrices;
    private String shippingId;
    private String paymentsId;
    private Boolean ordersStatus;
    private Collection<OrderDetailsEntity> orderDetailsByOrdersId;
    private CustomersEntity customersByCustomersId;
    private ShippingMethodEntity shippingMethodByShippingId;
    private PaymentsEntity paymentsByPaymentsId;
    private Collection<PositionsEntity> positionsByOrdersId;

    @Id
    @Column(name = "OrdersID")
    public String getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(String ordersId) {
        this.ordersId = ordersId;
    }

    @Basic
    @Column(name = "DateStartOrder")
    public Date getDateStartOrder() {
        return dateStartOrder;
    }

    public void setDateStartOrder(Date dateStartOrder) {
        this.dateStartOrder = dateStartOrder;
    }

    @Basic
    @Column(name = "CustomersID")
    public String getCustomersId() {
        return customersId;
    }

    public void setCustomersId(String customersId) {
        this.customersId = customersId;
    }

    @Basic
    @Column(name = "OrderDescriptions")
    public String getOrderDescriptions() {
        return orderDescriptions;
    }

    public void setOrderDescriptions(String orderDescriptions) {
        this.orderDescriptions = orderDescriptions;
    }

    @Basic
    @Column(name = "TotalPrices")
    public double getTotalPrices() {
        return totalPrices;
    }

    public void setTotalPrices(double totalPrices) {
        this.totalPrices = totalPrices;
    }

    @Basic
    @Column(name = "ShippingID")
    public String getShippingId() {
        return shippingId;
    }

    public void setShippingId(String shippingId) {
        this.shippingId = shippingId;
    }

    @Basic
    @Column(name = "PaymentsID")
    public String getPaymentsId() {
        return paymentsId;
    }

    public void setPaymentsId(String paymentsId) {
        this.paymentsId = paymentsId;
    }

    @Basic
    @Column(name = "OrdersStatus")
    public Boolean getOrdersStatus() {
        return ordersStatus;
    }

    public void setOrdersStatus(Boolean ordersStatus) {
        this.ordersStatus = ordersStatus;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OrdersEntity that = (OrdersEntity) o;

        if (Double.compare(that.totalPrices, totalPrices) != 0) return false;
        if (ordersId != null ? !ordersId.equals(that.ordersId) : that.ordersId != null) return false;
        if (dateStartOrder != null ? !dateStartOrder.equals(that.dateStartOrder) : that.dateStartOrder != null)
            return false;
        if (customersId != null ? !customersId.equals(that.customersId) : that.customersId != null) return false;
        if (orderDescriptions != null ? !orderDescriptions.equals(that.orderDescriptions) : that.orderDescriptions != null)
            return false;
        if (shippingId != null ? !shippingId.equals(that.shippingId) : that.shippingId != null) return false;
        if (paymentsId != null ? !paymentsId.equals(that.paymentsId) : that.paymentsId != null) return false;
        if (ordersStatus != null ? !ordersStatus.equals(that.ordersStatus) : that.ordersStatus != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = ordersId != null ? ordersId.hashCode() : 0;
        result = 31 * result + (dateStartOrder != null ? dateStartOrder.hashCode() : 0);
        result = 31 * result + (customersId != null ? customersId.hashCode() : 0);
        result = 31 * result + (orderDescriptions != null ? orderDescriptions.hashCode() : 0);
        temp = Double.doubleToLongBits(totalPrices);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + (shippingId != null ? shippingId.hashCode() : 0);
        result = 31 * result + (paymentsId != null ? paymentsId.hashCode() : 0);
        result = 31 * result + (ordersStatus != null ? ordersStatus.hashCode() : 0);
        return result;
    }

    @OneToMany(mappedBy = "ordersByOrdersId",cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    public Collection<OrderDetailsEntity> getOrderDetailsByOrdersId() {
        return orderDetailsByOrdersId;
    }

    public void setOrderDetailsByOrdersId(Collection<OrderDetailsEntity> orderDetailsByOrdersId) {
        this.orderDetailsByOrdersId = orderDetailsByOrdersId;
    }

    @ManyToOne
    @JoinColumn(name = "CustomersID", referencedColumnName = "CustomersID", nullable = false,insertable = false,updatable = false)
    public CustomersEntity getCustomersByCustomersId() {
        return customersByCustomersId;
    }

    public void setCustomersByCustomersId(CustomersEntity customersByCustomersId) {
        this.customersByCustomersId = customersByCustomersId;
    }

    @ManyToOne
    @JoinColumn(name = "ShippingID", referencedColumnName = "ShippingID", nullable = false,insertable = false,updatable = false)
    public ShippingMethodEntity getShippingMethodByShippingId() {
        return shippingMethodByShippingId;
    }

    public void setShippingMethodByShippingId(ShippingMethodEntity shippingMethodByShippingId) {
        this.shippingMethodByShippingId = shippingMethodByShippingId;
    }

    @ManyToOne
    @JoinColumn(name = "PaymentsID", referencedColumnName = "PaymentsID", nullable = false,insertable = false,updatable = false)
    public PaymentsEntity getPaymentsByPaymentsId() {
        return paymentsByPaymentsId;
    }

    public void setPaymentsByPaymentsId(PaymentsEntity paymentsByPaymentsId) {
        this.paymentsByPaymentsId = paymentsByPaymentsId;
    }

    @OneToMany(mappedBy = "ordersByOrdersId",cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    public Collection<PositionsEntity> getPositionsByOrdersId() {
        return positionsByOrdersId;
    }

    public void setPositionsByOrdersId(Collection<PositionsEntity> positionsByOrdersId) {
        this.positionsByOrdersId = positionsByOrdersId;
    }
}

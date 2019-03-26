package com.oplungdienthoai.model;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "positions", schema = "public", catalog = "oplungdienthoai")
public class PositionsEntity {
    private String positonsId;
    private String ordersId;
    private String employeesId;
    private Date dateShipping;
    private Date dateReceived;
    private String ordersStatusId;
    private Boolean positionsStatus;
    private OrdersEntity ordersByOrdersId;
    private EmployeesEntity employeesByEmployeesId;
    private StatusOrdersEntity statusOrdersByOrdersStatusId;

    @Id
    @Column(name = "PositonsID")
    public String getPositonsId() {
        return positonsId;
    }

    public void setPositonsId(String positonsId) {
        this.positonsId = positonsId;
    }

    @Basic
    @Column(name = "OrdersID")
    public String getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(String ordersId) {
        this.ordersId = ordersId;
    }

    @Basic
    @Column(name = "EmployeesID")
    public String getEmployeesId() {
        return employeesId;
    }

    public void setEmployeesId(String employeesId) {
        this.employeesId = employeesId;
    }

    @Basic
    @Column(name = "DateShipping")
    public Date getDateShipping() {
        return dateShipping;
    }

    public void setDateShipping(Date dateShipping) {
        this.dateShipping = dateShipping;
    }

    @Basic
    @Column(name = "DateReceived")
    public Date getDateReceived() {
        return dateReceived;
    }

    public void setDateReceived(Date dateReceived) {
        this.dateReceived = dateReceived;
    }

    @Basic
    @Column(name = "OrdersStatusID")
    public String getOrdersStatusId() {
        return ordersStatusId;
    }

    public void setOrdersStatusId(String ordersStatusId) {
        this.ordersStatusId = ordersStatusId;
    }

    @Basic
    @Column(name = "PositionsStatus")
    public Boolean getPositionsStatus() {
        return positionsStatus;
    }

    public void setPositionsStatus(Boolean positionsStatus) {
        this.positionsStatus = positionsStatus;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PositionsEntity that = (PositionsEntity) o;

        if (positonsId != null ? !positonsId.equals(that.positonsId) : that.positonsId != null) return false;
        if (ordersId != null ? !ordersId.equals(that.ordersId) : that.ordersId != null) return false;
        if (employeesId != null ? !employeesId.equals(that.employeesId) : that.employeesId != null) return false;
        if (dateShipping != null ? !dateShipping.equals(that.dateShipping) : that.dateShipping != null) return false;
        if (dateReceived != null ? !dateReceived.equals(that.dateReceived) : that.dateReceived != null) return false;
        if (ordersStatusId != null ? !ordersStatusId.equals(that.ordersStatusId) : that.ordersStatusId != null)
            return false;
        if (positionsStatus != null ? !positionsStatus.equals(that.positionsStatus) : that.positionsStatus != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = positonsId != null ? positonsId.hashCode() : 0;
        result = 31 * result + (ordersId != null ? ordersId.hashCode() : 0);
        result = 31 * result + (employeesId != null ? employeesId.hashCode() : 0);
        result = 31 * result + (dateShipping != null ? dateShipping.hashCode() : 0);
        result = 31 * result + (dateReceived != null ? dateReceived.hashCode() : 0);
        result = 31 * result + (ordersStatusId != null ? ordersStatusId.hashCode() : 0);
        result = 31 * result + (positionsStatus != null ? positionsStatus.hashCode() : 0);
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
    @JoinColumn(name = "EmployeesID", referencedColumnName = "EmployeesID", nullable = false,insertable = false,updatable = false)
    public EmployeesEntity getEmployeesByEmployeesId() {
        return employeesByEmployeesId;
    }

    public void setEmployeesByEmployeesId(EmployeesEntity employeesByEmployeesId) {
        this.employeesByEmployeesId = employeesByEmployeesId;
    }

    @ManyToOne
    @JoinColumn(name = "OrdersStatusID", referencedColumnName = "OrdersStatusID", nullable = false,insertable = false,updatable = false)
    public StatusOrdersEntity getStatusOrdersByOrdersStatusId() {
        return statusOrdersByOrdersStatusId;
    }

    public void setStatusOrdersByOrdersStatusId(StatusOrdersEntity statusOrdersByOrdersStatusId) {
        this.statusOrdersByOrdersStatusId = statusOrdersByOrdersStatusId;
    }
}

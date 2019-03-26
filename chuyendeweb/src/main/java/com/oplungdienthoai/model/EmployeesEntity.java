package com.oplungdienthoai.model;

import javax.persistence.*;
import java.sql.Date;
import java.util.Collection;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "employees", schema = "public", catalog = "oplungdienthoai")
public class EmployeesEntity {
    private String employeesId;
    private String employeesName;
    private String email;
    private String phone;
    private String address;
    private Date dateStart;
    private String deliveryId;
    private Boolean employeesStatus;
    private DeliveryEntity deliveryByDeliveryId;
    private Collection<PositionsEntity> positionsByEmployeesId;

    @Id
    @Column(name = "EmployeesID")
    public String getEmployeesId() {
        return employeesId;
    }

    public void setEmployeesId(String employeesId) {
        this.employeesId = employeesId;
    }

    @Basic
    @Column(name = "EmployeesName")
    public String getEmployeesName() {
        return employeesName;
    }

    public void setEmployeesName(String employeesName) {
        this.employeesName = employeesName;
    }

    @Basic
    @Column(name = "Email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "Phone")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "Address")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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
    @Column(name = "DeliveryID")
    public String getDeliveryId() {
        return deliveryId;
    }

    public void setDeliveryId(String deliveryId) {
        this.deliveryId = deliveryId;
    }

    @Basic
    @Column(name = "EmployeesStatus")
    public Boolean getEmployeesStatus() {
        return employeesStatus;
    }

    public void setEmployeesStatus(Boolean employeesStatus) {
        this.employeesStatus = employeesStatus;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EmployeesEntity that = (EmployeesEntity) o;

        if (employeesId != null ? !employeesId.equals(that.employeesId) : that.employeesId != null) return false;
        if (employeesName != null ? !employeesName.equals(that.employeesName) : that.employeesName != null)
            return false;
        if (email != null ? !email.equals(that.email) : that.email != null) return false;
        if (phone != null ? !phone.equals(that.phone) : that.phone != null) return false;
        if (address != null ? !address.equals(that.address) : that.address != null) return false;
        if (dateStart != null ? !dateStart.equals(that.dateStart) : that.dateStart != null) return false;
        if (deliveryId != null ? !deliveryId.equals(that.deliveryId) : that.deliveryId != null) return false;
        if (employeesStatus != null ? !employeesStatus.equals(that.employeesStatus) : that.employeesStatus != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = employeesId != null ? employeesId.hashCode() : 0;
        result = 31 * result + (employeesName != null ? employeesName.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (dateStart != null ? dateStart.hashCode() : 0);
        result = 31 * result + (deliveryId != null ? deliveryId.hashCode() : 0);
        result = 31 * result + (employeesStatus != null ? employeesStatus.hashCode() : 0);
        return result;
    }

    @ManyToOne
    @JoinColumn(name = "DeliveryID", referencedColumnName = "DeliveryID", nullable = false,insertable = false,updatable = false)
    public DeliveryEntity getDeliveryByDeliveryId() {
        return deliveryByDeliveryId;
    }

    public void setDeliveryByDeliveryId(DeliveryEntity deliveryByDeliveryId) {
        this.deliveryByDeliveryId = deliveryByDeliveryId;
    }

    @OneToMany(mappedBy = "employeesByEmployeesId",cascade=CascadeType.ALL, fetch = FetchType.LAZY)
    public Collection<PositionsEntity> getPositionsByEmployeesId() {
        return positionsByEmployeesId;
    }

    public void setPositionsByEmployeesId(Collection<PositionsEntity> positionsByEmployeesId) {
        this.positionsByEmployeesId = positionsByEmployeesId;
    }
}

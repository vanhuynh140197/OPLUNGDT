package com.oplungdienthoai.model;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "status_orders", schema = "public", catalog = "oplungdienthoai")
public class StatusOrdersEntity {
	private String ordersStatusId;
	private String descriptions;
	private Collection<PositionsEntity> positionsByOrdersStatusId;

	@Id
	@Column(name = "orderstatusid")
	public String getOrdersStatusId() {
		return ordersStatusId;
	}

	public void setOrdersStatusId(String ordersStatusId) {
		this.ordersStatusId = ordersStatusId;
	}

	@Basic
	@Column(name = "descriptions")
	public String getDescriptions() {
		return descriptions;
	}

	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		StatusOrdersEntity that = (StatusOrdersEntity) o;

		if (ordersStatusId != null ? !ordersStatusId.equals(that.ordersStatusId) : that.ordersStatusId != null)
			return false;
		if (descriptions != null ? !descriptions.equals(that.descriptions) : that.descriptions != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		int result = ordersStatusId != null ? ordersStatusId.hashCode() : 0;
		result = 31 * result + (descriptions != null ? descriptions.hashCode() : 0);
		return result;
	}

	@OneToMany(mappedBy = "statusOrdersByOrdersStatusId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	public Collection<PositionsEntity> getPositionsByOrdersStatusId() {
		return positionsByOrdersStatusId;
	}

	public void setPositionsByOrdersStatusId(Collection<PositionsEntity> positionsByOrdersStatusId) {
		this.positionsByOrdersStatusId = positionsByOrdersStatusId;
	}
}

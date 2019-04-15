package com.oplungdienthoai.model;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "comment_products", schema = "public", catalog = "oplungdienthoai")
public class CommentProductsEntity {
	private String commentId;
	private String commentName;
	private Date dateComment;
	private String descriptions;
	private String customersId;
	private CustomersEntity customersByCustomersId;

	@Id
	@Column(name = "commentid")
	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	@Basic
	@Column(name = "commentname")
	public String getCommentName() {
		return commentName;
	}

	public void setCommentName(String commentName) {
		this.commentName = commentName;
	}

	@Basic
	@Column(name = "datecomment")
	public Date getDateComment() {
		return dateComment;
	}

	public void setDateComment(Date dateComment) {
		this.dateComment = dateComment;
	}

	@Basic
	@Column(name = "descriptions")
	public String getDescriptions() {
		return descriptions;
	}

	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}

	@Basic
	@Column(name = "customersid")
	public String getCustomersId() {
		return customersId;
	}

	public void setCustomersId(String customersId) {
		this.customersId = customersId;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		CommentProductsEntity that = (CommentProductsEntity) o;

		if (commentId != null ? !commentId.equals(that.commentId) : that.commentId != null)
			return false;
		if (commentName != null ? !commentName.equals(that.commentName) : that.commentName != null)
			return false;
		if (dateComment != null ? !dateComment.equals(that.dateComment) : that.dateComment != null)
			return false;
		if (descriptions != null ? !descriptions.equals(that.descriptions) : that.descriptions != null)
			return false;
		if (customersId != null ? !customersId.equals(that.customersId) : that.customersId != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		int result = commentId != null ? commentId.hashCode() : 0;
		result = 31 * result + (commentName != null ? commentName.hashCode() : 0);
		result = 31 * result + (dateComment != null ? dateComment.hashCode() : 0);
		result = 31 * result + (descriptions != null ? descriptions.hashCode() : 0);
		result = 31 * result + (customersId != null ? customersId.hashCode() : 0);
		return result;
	}

	@ManyToOne
	@JoinColumn(name = "customersid", referencedColumnName = "customersid", nullable = false, insertable = false, updatable = false)
	public CustomersEntity getCustomersByCustomersId() {
		return customersByCustomersId;
	}

	public void setCustomersByCustomersId(CustomersEntity customersByCustomersId) {
		this.customersByCustomersId = customersByCustomersId;
	}
}

package com.oplungdienthoai.model;

import javax.persistence.*;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "users", schema = "public", catalog = "oplungdienthoai")
public class UsersEntity {
	private String userId;
	private String userName;
	private String passwords;
	private String email;
	private String phone;
	private Boolean validateEmail;
	private String roleId;
	private Boolean usersStatus;
	private RoleEntity roleByRoleId;

	@Id
	@Column(name = "userid")
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Basic
	@Column(name = "username")
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Basic
	@Column(name = "passwords")
	public String getPasswords() {
		return passwords;
	}

	public void setPasswords(String passwords) {
		this.passwords = passwords;
	}

	@Basic
	@Column(name = "email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Basic
	@Column(name = "phone")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Basic
	@Column(name = "validateemail")
	public Boolean getValidateEmail() {
		return validateEmail;
	}

	public void setValidateEmail(Boolean validateEmail) {
		this.validateEmail = validateEmail;
	}

	@Basic
	@Column(name = "roleid")
	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	@Basic
	@Column(name = "userstatus")
	public Boolean getUsersStatus() {
		return usersStatus;
	}

	public void setUsersStatus(Boolean usersStatus) {
		this.usersStatus = usersStatus;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		UsersEntity that = (UsersEntity) o;

		if (userId != null ? !userId.equals(that.userId) : that.userId != null)
			return false;
		if (userName != null ? !userName.equals(that.userName) : that.userName != null)
			return false;
		if (passwords != null ? !passwords.equals(that.passwords) : that.passwords != null)
			return false;
		if (email != null ? !email.equals(that.email) : that.email != null)
			return false;
		if (phone != null ? !phone.equals(that.phone) : that.phone != null)
			return false;
		if (validateEmail != null ? !validateEmail.equals(that.validateEmail) : that.validateEmail != null)
			return false;
		if (roleId != null ? !roleId.equals(that.roleId) : that.roleId != null)
			return false;
		if (usersStatus != null ? !usersStatus.equals(that.usersStatus) : that.usersStatus != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		int result = userId != null ? userId.hashCode() : 0;
		result = 31 * result + (userName != null ? userName.hashCode() : 0);
		result = 31 * result + (passwords != null ? passwords.hashCode() : 0);
		result = 31 * result + (email != null ? email.hashCode() : 0);
		result = 31 * result + (phone != null ? phone.hashCode() : 0);
		result = 31 * result + (validateEmail != null ? validateEmail.hashCode() : 0);
		result = 31 * result + (roleId != null ? roleId.hashCode() : 0);
		result = 31 * result + (usersStatus != null ? usersStatus.hashCode() : 0);
		return result;
	}

	@ManyToOne
	@JoinColumn(name = "roleid", referencedColumnName = "roleid", nullable = false, insertable = false, updatable = false)
	public RoleEntity getRoleByRoleId() {
		return roleByRoleId;
	}

	public void setRoleByRoleId(RoleEntity roleByRoleId) {
		this.roleByRoleId = roleByRoleId;
	}
}

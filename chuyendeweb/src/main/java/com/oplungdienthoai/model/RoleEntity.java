package com.oplungdienthoai.model;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by VanHuynh on 25/03/2019.
 */
@Entity
@Table(name = "role", schema = "public", catalog = "oplungdienthoai")
public class RoleEntity {
	private String roleId;
	private String roleName;
	private Collection<UsersEntity> usersByRoleId;

	@Id
	@Column(name = "RoleID")
	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	@Basic
	@Column(name = "RoleName")
	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;

		RoleEntity that = (RoleEntity) o;

		if (roleId != null ? !roleId.equals(that.roleId) : that.roleId != null)
			return false;
		if (roleName != null ? !roleName.equals(that.roleName) : that.roleName != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		int result = roleId != null ? roleId.hashCode() : 0;
		result = 31 * result + (roleName != null ? roleName.hashCode() : 0);
		return result;
	}

	@OneToMany(mappedBy = "roleByRoleId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	public Collection<UsersEntity> getUsersByRoleId() {
		return usersByRoleId;
	}

	public void setUsersByRoleId(Collection<UsersEntity> usersByRoleId) {
		this.usersByRoleId = usersByRoleId;
	}
}

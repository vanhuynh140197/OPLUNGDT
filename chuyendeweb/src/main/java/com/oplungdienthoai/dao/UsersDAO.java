package com.oplungdienthoai.dao;

import java.util.List;

import com.oplungdienthoai.model.UsersEntity;

public interface UsersDAO {

	public List<UsersEntity> getAll();

	public UsersEntity getUsers(String userId);

	public UsersEntity getUsersName(String userName);

	public boolean add(UsersEntity user);

	public boolean edit(UsersEntity user);

	public boolean remove(String userId);

	public boolean update(String username, Boolean daxacnhan);
}

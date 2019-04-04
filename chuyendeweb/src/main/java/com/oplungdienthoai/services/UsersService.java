package com.oplungdienthoai.services;

import java.util.List;

import com.oplungdienthoai.model.UsersEntity;

public interface UsersService {

	public List<UsersEntity> getAll();

	public UsersEntity getUsers(String userId);

	public boolean add(UsersEntity user);

	public boolean edit(UsersEntity user);

	public boolean remove(String userId);
}

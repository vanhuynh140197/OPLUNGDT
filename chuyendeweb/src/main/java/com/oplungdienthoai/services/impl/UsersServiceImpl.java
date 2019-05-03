package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.UsersDAO;
import com.oplungdienthoai.model.UsersEntity;
import com.oplungdienthoai.services.UsersService;

@Service
public class UsersServiceImpl implements UsersService {

	@Autowired
	UsersDAO usersDAO;

	@Override
	public List<UsersEntity> getAll() {
		return usersDAO.getAll();
	}

	@Override
	public UsersEntity getUsers(String userId) {
		return usersDAO.getUsers(userId);
	}

	@Override
	public UsersEntity getUsersName(String userName) {
		return usersDAO.getUsersName(userName);
	}

	@Override
	public boolean add(UsersEntity user) {
		return usersDAO.add(user);
	}

	@Override
	public boolean edit(UsersEntity user) {
		return usersDAO.edit(user);
	}

	@Override
	public boolean remove(String userId) {
		return usersDAO.remove(userId);
	}

	@Override
	public boolean update(String userename, Boolean daxacnhan) {
		return usersDAO.update(userename, daxacnhan);
	}
}

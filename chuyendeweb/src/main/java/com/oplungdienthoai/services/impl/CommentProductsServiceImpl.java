package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.CommentProductsDAO;
import com.oplungdienthoai.model.CommentProductsEntity;
import com.oplungdienthoai.services.CommentProductsService;

@Service
public class CommentProductsServiceImpl implements CommentProductsService {

	@Autowired
	CommentProductsDAO commentProductsDAO;

	@Override
	public List<CommentProductsEntity> getAll() {
		return commentProductsDAO.getAll();
	}

	@Override
	public CommentProductsEntity getCommentProducts(String commentId) {
		return commentProductsDAO.getCommentProducts(commentId);
	}

	@Override
	public boolean add(CommentProductsEntity commentProducts) {
		return commentProductsDAO.add(commentProducts);
	}

	@Override
	public boolean edit(CommentProductsEntity commentProducts) {
		return commentProductsDAO.edit(commentProducts);
	}

	@Override
	public boolean remove(String commentId) {
		return commentProductsDAO.remove(commentId);
	}
}

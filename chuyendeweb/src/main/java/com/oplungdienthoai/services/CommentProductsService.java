package com.oplungdienthoai.services;

import java.util.List;

import com.oplungdienthoai.model.CommentProductsEntity;

public interface CommentProductsService {

	public List<CommentProductsEntity> getAll();

	public CommentProductsEntity getCommentProducts(String commentId);

	public boolean add(CommentProductsEntity commentProducts);

	public boolean edit(CommentProductsEntity commentProducts);

	public boolean remove(String commentId);
}

package com.oplungdienthoai.dao;

import java.util.List;

import com.oplungdienthoai.model.CommentProductsEntity;

public interface CommentProductsDAO {

	public List<CommentProductsEntity> getAll();

	public CommentProductsEntity getCommentProducts(String commentId);

	public boolean add(CommentProductsEntity commentProducts);

	public boolean edit(CommentProductsEntity commentProducts);

	public boolean remove(String commentId);
}

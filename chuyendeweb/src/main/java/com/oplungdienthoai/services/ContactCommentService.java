package com.oplungdienthoai.services;

import java.util.List;

import com.oplungdienthoai.model.ContactCommentEntity;

public interface ContactCommentService {

	public List<ContactCommentEntity> getAll();

	public ContactCommentEntity getContactComment(String contactId);

	public boolean add(ContactCommentEntity contactComment);

	public boolean edit(ContactCommentEntity contactComment);

	public boolean remove(String contactId);
}

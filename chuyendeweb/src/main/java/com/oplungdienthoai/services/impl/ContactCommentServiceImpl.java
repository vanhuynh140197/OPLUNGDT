package com.oplungdienthoai.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oplungdienthoai.dao.ContactCommentDAO;
import com.oplungdienthoai.model.ContactCommentEntity;
import com.oplungdienthoai.services.ContactCommentService;

@Service
public class ContactCommentServiceImpl implements ContactCommentService {

	@Autowired
	ContactCommentDAO contactCommentDAO;

	@Override
	public List<ContactCommentEntity> getAll() {
		return contactCommentDAO.getAll();
	}

	@Override
	public ContactCommentEntity getContactComment(String contactId) {
		return contactCommentDAO.getContactComment(contactId);
	}

	@Override
	public boolean add(ContactCommentEntity contactComment) {
		return contactCommentDAO.add(contactComment);
	}

	@Override
	public boolean edit(ContactCommentEntity contactComment) {
		return contactCommentDAO.edit(contactComment);
	}

	@Override
	public boolean remove(String contactId) {
		return contactCommentDAO.remove(contactId);
	}
}

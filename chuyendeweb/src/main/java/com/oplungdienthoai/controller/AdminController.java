package com.oplungdienthoai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	@RequestMapping(value = "/oplungdienthoai")
	public String index() {
		return "/admin/index";
	}

	@RequestMapping(value = "/oplungdienthoai/sanpham")
	public String product() {
		return "/admin/product";
	}
	@RequestMapping(value = "/oplungdienthoai/themsanpham")
	public String addProduct() {
		return "/admin/add-product";
	}
	@RequestMapping(value = "/oplungdienthoai/suasanpham")
	public String editProduct() {
		return "/admin/edit-product";
	}
	@RequestMapping(value = "/oplungdienthoai/menu_admin")
	public String menuAdmin() {
		return "/admin/menu_admin";
	}
	@RequestMapping(value = "/oplungdienthoai/noidung")
	public String content() {
		return "/admin/content";
	}

	
}

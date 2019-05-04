package com.oplungdienthoai.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.oplungdienthoai.model.ProductsEntity;
import com.oplungdienthoai.services.ProductsService;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	@Autowired
	ProductsService productsService;
	@RequestMapping(value = "/oplungdienthoai")
	public String index() {
		return "/admin/index";
	}

	@RequestMapping(value = "/oplungdienthoai/sanpham")
	public String product(ModelMap modelMap) {
		List<ProductsEntity> productsEntities = productsService.getAll();
		modelMap.put("listProducts", productsEntities);
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
	@RequestMapping(value = "/oplungdienthoai/xoasanpham/{productsId}", method = RequestMethod.GET)
	public String removeProduct(@PathVariable(value = "productsId") String productsId) {
		productsService.remove(productsId);
		return "redirect:/admin/oplungdienthoai/sanpham";
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

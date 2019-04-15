package com.oplungdienthoai.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oplungdienthoai.model.UsersEntity;
import com.oplungdienthoai.services.ProductsService;
import com.oplungdienthoai.services.UsersService;

@Controller
@RequestMapping(value = "/oplungdienthoai")
public class HomeController {

	@Autowired
	UsersService userService;

	@Autowired
	ProductsService productService;

	@RequestMapping(value = "/home")
	public String index() {
		return "/ui/index";
	}

	@RequestMapping(value = "/home/chitiet")
	public String chiTiet() {
		return "/ui/detail";
	}

	@RequestMapping(value = "/home/giohang")
	public String gioHang() {
		return "/ui/basket";
	}

	@RequestMapping(value = "/home/menu")
	public String menu() {
		return "/ui/menu";
	}

	@RequestMapping(value = "/home/thanhtoan")
	public String thanhToan() {
		return "/ui/checkout1";
	}

	@RequestMapping(value = "/home/thanhtoan2")
	public String thanhToan2() {
		return "/ui/checkout2";
	}

	@RequestMapping(value = "/home/thanhtoan3")
	public String thanhToan3() {
		return "/ui/checkout3";
	}

	@RequestMapping(value = "/home/thanhtoan4")
	public String thanhToan4() {
		return "/ui/checkout4";
	}

	@RequestMapping(value = "/home/sanpham")
	public String sanPham() {
		return "/ui/category-right";
	}

	@RequestMapping(value = "/home/dangky")
	public String dangKy() {
		return "/ui/register";
	}

	@RequestMapping(value = "/home/dangnhap")
	public String dangNhap() {
		return "/ui/login";
	}

	@RequestMapping(value = "/home/login/ajax")
	public @ResponseBody String ajaxLogin(@RequestParam(value = "email") String email,
			@RequestParam(value = "password") String password) {
		UsersEntity usersEntity = userService.getUsersName(email);
		if (usersEntity == null) {
			return "error";
		} else {
			return usersEntity.getUserName().trim().equals(email) && usersEntity.getPasswords().trim().equals(password)
					? "success" : "error";
		}

	}
}

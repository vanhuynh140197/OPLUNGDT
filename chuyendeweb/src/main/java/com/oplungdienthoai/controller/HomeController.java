package com.oplungdienthoai.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	@RequestMapping(value = "/trangchu")
	public String index() {
		return "/ui/index";
	}

	@RequestMapping(value = "/chitiet")
	public String chiTiet() {
		return "/ui/detail";
	}

	@RequestMapping(value = "/giohang")
	public String gioHang() {
		return "/ui/basket";
	}

	@RequestMapping(value = "/menu")
	public String menu() {
		return "/ui/menu";
	}

	@RequestMapping(value = "/thanhtoan")
	public String thanhToan() {
		return "/ui/checkout1";
	}

	@RequestMapping(value = "/thanhtoan2")
	public String thanhToan2() {
		return "/ui/checkout2";
	}

	@RequestMapping(value = "/thanhtoan3")
	public String thanhToan3() {
		return "/ui/checkout3";
	}

	@RequestMapping(value = "/thanhtoan4")
	public String thanhToan4() {
		return "/ui/checkout4";
	}

	@RequestMapping(value = "/sanpham")
	public String sanPham() {
		return "/ui/category-right";
	}

	@RequestMapping(value = "/dangky")
	public String dangKy() {
		return "/ui/register";
	}

	@RequestMapping(value = "/dangnhap")
	public String dangNhap() {
		return "/ui/login";
	}

	@RequestMapping(value = "/dangxuat")
	public String dangXuat(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "/ui/index";
	}

	@RequestMapping(value = "/trangchu/login/ajax", method = RequestMethod.POST)
	public @ResponseBody String ajaxLogin(@RequestParam(value = "email") String email,
			@RequestParam(value = "password") String password, HttpSession session) {
		UsersEntity usersEntity = userService.getUsersName(email);
		if (usersEntity == null) {
			return "error";
		} else if (!usersEntity.getPasswords().trim().equals(password)) {
			return "error";
		} else {
			session.setAttribute("LoginSuccess", usersEntity);
			return "success";
		}
	}
}

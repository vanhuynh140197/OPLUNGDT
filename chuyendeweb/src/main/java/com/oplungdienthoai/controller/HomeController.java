package com.oplungdienthoai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/oplungdienthoai")
public class HomeController {

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
}

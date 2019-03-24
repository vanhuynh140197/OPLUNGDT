package com.oplungdienthoai.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value ="/oplungdienthoai")
public class HomeController {

	@RequestMapping(value ="/home")
	public String index(){
		return "/ui/index";
	}
	@RequestMapping(value ="/home/chitiet")
	public String chiTiet(){
		return "/ui/detail";
	}
}


package com.oplungdienthoai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/admin")
public class HomeController {

	@RequestMapping(value = "/oplungdienthoai")
	public String index(){
		return "/admin/index";
	}

}

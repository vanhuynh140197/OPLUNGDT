package com.oplungdienthoai.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	@RequestMapping(value = "/oplungdienthoai")
	public String index(){
		return "/admin/index";
	}

	@RequestMapping(value = "/oplungdienthoai/dashboardv.2")
	public String index1(){
		return "/admin/index-1";
	}

	@RequestMapping(value = "/oplungdienthoai/all-students")
	public String allStudents(){
		return "/admin/all-students";
	}

	@RequestMapping(value = "/oplungdienthoai/static-table")
	public String staticTable(){
		return "/admin/static-table";
	}

	@RequestMapping(value = "/oplungdienthoai/data-table")
	public String dataTable(){
		return "/admin/data-table";
	}
}

package com.oplungdienthoai.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.oplungdienthoai.model.ProductsEntity;
import com.oplungdienthoai.services.ProductTypesService;
import com.oplungdienthoai.services.ProductsService;
import com.oplungdienthoai.services.PromotionsService;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	@Autowired
	ProductsService productsService;
	@Autowired
	ProductTypesService producTypesServices;
	@Autowired
	PromotionsService promotionServices;
	@Autowired
	ServletContext context;

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
	public String addProduct(ModelMap modelMap) {
		modelMap.put("listProductType", producTypesServices.getAll());
		modelMap.put("listPromotions", promotionServices.getAll());
		return "/admin/add-product";
	}

	@RequestMapping(
			value = "/oplungdienthoai/themsanpham/xuLyThem",
			method = RequestMethod.POST,
			produces = "text/plain;charset=UTF-8")
	public String actionAddProduct(@RequestParam(value = "images1") MultipartFile images1,
			@RequestParam(value = "images2") MultipartFile images2,
			@RequestParam(value = "productname") String productname,
			@RequestParam(value = "color") String color,
			@RequestParam(value = "amount") int amount,
			@RequestParam(value = "prices") Double prices,
			@RequestParam(value = "producttype") String producttype,
			@RequestParam(value = "promotions") String promotions,
			@RequestParam(value = "description") String description) {

		String productID = Long.toString(System.currentTimeMillis());
		String nameFile1 = images1.getOriginalFilename();
		String nameFile2 = images2.getOriginalFilename();
		ProductsEntity productsEntity = new ProductsEntity();
		productsEntity.setProductsId("PRO" + productID);
		productsEntity.setProductsName(productname);
		productsEntity.setAmount(amount);
		productsEntity.setPrices(prices);
		productsEntity.setDescription(description);
		productsEntity.setProductsColor(color);
		productsEntity.setProductsStatus(false);
		productsEntity.setPromotionsId(promotions);
		productsEntity.setProductTypesId(producttype);
		if (!"".equals(nameFile1) && !"".equals(nameFile2)) {
			String dir = "/resources/ui/img/upload";
			String dirFile = context.getRealPath(dir);
			File fileDir = new File(dirFile);
			if (!fileDir.exists()) {
				fileDir.mkdir();
			}
			try {
				images1.transferTo(new File(fileDir + File.separator + nameFile1));
				images2.transferTo(new File(fileDir + File.separator + nameFile2));
				productsEntity.setProductsImages1(dir + "/" + nameFile1);
				productsEntity.setProductsImages2(dir + "/" + nameFile2);
				productsService.add(productsEntity);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("Upload file thất bại!");
			}
		}
		return "redirect:/admin/oplungdienthoai/sanpham";
	}

	@RequestMapping(
			value = "/oplungdienthoai/suasanpham/{productsId:.+}",
			method = RequestMethod.GET)
	public String editProduct(@PathVariable(value = "productsId") String productsId,
			ModelMap modelMap) {
		ProductsEntity productsEntity = productsService.getProducts(productsId);
		modelMap.put("listProductType", producTypesServices.getAll());
		modelMap.put("listPromotions", promotionServices.getAll());
		modelMap.put("editProductEnTity", productsEntity);
		return "/admin/edit-product";
	}

	@RequestMapping(
			value = "/oplungdienthoai/suasanpham/xuLySua",
			method = RequestMethod.POST,
			produces = "text/plain;charset=UTF-8")
	public String actionRditProduct(@RequestParam(value = "images1") MultipartFile images1,
			@RequestParam(value = "images2") MultipartFile images2,
			@RequestParam(value = "productname") String productname,
			@RequestParam(value = "color") String color,
			@RequestParam(value = "amount") int amount,
			@RequestParam(value = "prices") Double prices,
			@RequestParam(value = "producttype") String producttype,
			@RequestParam(value = "promotions") String promotions,
			@RequestParam(value = "description") String description,
			@RequestParam(value = "productid") String productid) {

		String nameFile1 = images1.getOriginalFilename();
		String nameFile2 = images2.getOriginalFilename();
		ProductsEntity productsEntity = new ProductsEntity();
		productsEntity.setProductsId(productid);
		productsEntity.setProductsName(productname);
		productsEntity.setAmount(amount);
		productsEntity.setPrices(prices);
		productsEntity.setDescription(description);
		productsEntity.setProductsColor(color);
		productsEntity.setProductsStatus(false);
		productsEntity.setPromotionsId(promotions);
		productsEntity.setProductTypesId(producttype);
		if (!"".equals(nameFile1) && !"".equals(nameFile2)) {
			String dir = "/resources/ui/img/upload";
			String dirFile = context.getRealPath(dir);
			File fileDir = new File(dirFile);
			if (!fileDir.exists()) {
				fileDir.mkdir();
			}
			try {
				images1.transferTo(new File(fileDir + File.separator + nameFile1));
				images2.transferTo(new File(fileDir + File.separator + nameFile2));
				productsEntity.setProductsImages1(dir + "/" + nameFile1);
				productsEntity.setProductsImages2(dir + "/" + nameFile2);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("Upload file thất bại!");
			}
		}
		productsService.edit(productsEntity);
		return "redirect:/admin/oplungdienthoai/sanpham";
	}

	@RequestMapping(
			value = "/oplungdienthoai/xoasanpham/{productsId:.+}",
			method = RequestMethod.GET)
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

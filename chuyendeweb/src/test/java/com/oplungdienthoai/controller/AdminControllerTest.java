package com.oplungdienthoai.controller;

import static org.mockito.Matchers.anyString;
import static org.mockito.Mockito.atLeastOnce;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.LinkedList;
import java.util.List;

import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;
import org.springframework.ui.ModelMap;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import com.oplungdienthoai.model.ProductsEntity;
import com.oplungdienthoai.services.ProductsService;

public class AdminControllerTest {
	@Mock
	ProductsService service;

	@InjectMocks
	AdminController adminController;

	@Spy
	List<ProductsEntity> productsEntities = new LinkedList<ProductsEntity>();

	@Spy
	ModelMap model;

	@BeforeClass
	public void setUp() {
		MockitoAnnotations.initMocks(this);
		productsEntities = getProductList();
	}

	@Test
	public void listProduct() {
		when(service.getAll()).thenReturn(productsEntities);
		Assert.assertEquals(adminController.product(model), "/admin/product");
		Assert.assertEquals(model.get("listProducts"), productsEntities);
		verify(service, atLeastOnce()).getAll();
	}

	@Test
	public void deleteProduct() {
		when(service.remove(anyString())).thenReturn(true);
		Assert.assertEquals(adminController.removeProduct("123"),
				"redirect:/admin/oplungdienthoai/sanpham");
	}
	public List<ProductsEntity> getProductList() {
		ProductsEntity productsEntity = new ProductsEntity();
		productsEntity.setAmount(2);
		productsEntity.setDescription("description 1");
		productsEntity.setPrices(2000.00);
		productsEntity.setProductsColor("color 1");
		productsEntity.setProductsId("Product 1");
		productsEntity.setProductsImages1("prorduct img 1");
		productsEntity.setProductsImages2("product img 2");
		productsEntity.setProductsName("product name 1");
		productsEntity.setProductsStatus(false);
		productsEntity.setProductTypesId("LSP0000001");
		productsEntity.setPromotionsId("PRO0000001");

		ProductsEntity productsEntity1 = new ProductsEntity();
		productsEntity1.setAmount(4);
		productsEntity1.setDescription("description 2");
		productsEntity1.setPrices(2000.00);
		productsEntity1.setProductsColor("color 2");
		productsEntity1.setProductsId("Product 2");
		productsEntity1.setProductsImages1("prorduct2 img 1");
		productsEntity1.setProductsImages2("product2 img 2");
		productsEntity1.setProductsName("product name 2");
		productsEntity1.setProductsStatus(false);
		productsEntity1.setProductTypesId("LSP0000001");
		productsEntity1.setPromotionsId("PRO0000001");

		productsEntities.add(productsEntity);
		productsEntities.add(productsEntity1);
		return productsEntities;
	}
}

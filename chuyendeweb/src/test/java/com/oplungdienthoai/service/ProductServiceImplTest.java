package com.oplungdienthoai.service;

import static org.mockito.Matchers.anyString;
import static org.mockito.Mockito.atLeastOnce;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import com.oplungdienthoai.dao.ProductsDAO;
import com.oplungdienthoai.model.ProductsEntity;
import com.oplungdienthoai.services.impl.ProductsServiceImpl;

public class ProductServiceImplTest {
	@Mock
	ProductsDAO dao;

	@InjectMocks
	ProductsServiceImpl productsServiceImpl;

	@Spy
	List<ProductsEntity> productsEntities = new ArrayList<ProductsEntity>();

	@BeforeClass
	public void setUp() {
		MockitoAnnotations.initMocks(this);
		productsEntities = getProductList();
	}

	@Test
	public void findById() {
		ProductsEntity productsEntity = productsEntities.get(0);
		when(dao.getProducts(anyString())).thenReturn(productsEntity);
		Assert.assertEquals(productsServiceImpl.getProducts(productsEntity.getProductsId()),
				productsEntity);
	}
	@Test
	public void updateProduct() {
		ProductsEntity productsEntity = productsEntities.get(0);
		when(dao.getProducts(anyString())).thenReturn(productsEntity);
		productsServiceImpl.edit(productsEntity);
		verify(dao, atLeastOnce()).getProducts(anyString());
	}
	@Test
	public void deleteProduct() {
		when(dao.remove(anyString())).thenReturn(true);
		productsServiceImpl.remove(anyString());
		verify(dao, atLeastOnce()).remove(anyString());
	}
	@Test
	public void findAllProduct() {
		when(dao.getAll()).thenReturn(productsEntities);
		Assert.assertEquals(productsServiceImpl.getAll(), productsEntities);
		Assert.assertEquals(productsServiceImpl.getAll().size(), 2);
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

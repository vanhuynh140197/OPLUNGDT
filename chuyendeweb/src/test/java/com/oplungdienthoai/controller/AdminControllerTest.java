package com.oplungdienthoai.controller;

import static org.mockito.Mockito.atLeastOnce;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.LinkedList;
import java.util.List;

import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;
import org.springframework.context.MessageSource;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import com.oplungdienthoai.model.ProductsEntity;
import com.oplungdienthoai.services.ProductsService;

public class AdminControllerTest {
	@Mock
	ProductsService service;

	@Mock
	MessageSource message;

	@InjectMocks
	AdminController adminController;

	@Spy
	List<ProductsEntity> productsEntities = new LinkedList<ProductsEntity>();

	@Spy
	ModelMap model;

	@Mock
	BindingResult result;

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

	/*
	 * @Test public void newEmployee() {
	 * Assert.assertEquals(appController.newEmployee(model), "registration");
	 * Assert.assertNotNull(model.get("employee")); Assert.assertFalse((Boolean)
	 * model.get("edit")); Assert.assertEquals(((Employee)
	 * model.get("employee")).getId(), 0); }
	 * 
	 * @Test public void saveEmployeeWithValidationError() {
	 * when(result.hasErrors()).thenReturn(true);
	 * doNothing().when(service).saveEmployee(any(Employee.class));
	 * Assert.assertEquals(appController.saveEmployee(employees.get(0), result,
	 * model), "registration"); }
	 * 
	 * @Test public void saveEmployeeWithValidationErrorNonUniqueSSN() {
	 * when(result.hasErrors()).thenReturn(false);
	 * when(service.isEmployeeSsnUnique(anyInt(), anyString())).thenReturn(false);
	 * Assert.assertEquals(appController.saveEmployee(employees.get(0), result,
	 * model), "registration"); }
	 * 
	 * @Test public void saveEmployeeWithSuccess() {
	 * when(result.hasErrors()).thenReturn(false);
	 * when(service.isEmployeeSsnUnique(anyInt(), anyString())).thenReturn(true);
	 * doNothing().when(service).saveEmployee(any(Employee.class));
	 * Assert.assertEquals(appController.saveEmployee(employees.get(0), result,
	 * model), "success"); Assert.assertEquals(model.get("success"),
	 * "Employee Axel registered successfully"); }
	 * 
	 * @Test public void editEmployee() { Employee emp = employees.get(0);
	 * when(service.findEmployeeBySsn(anyString())).thenReturn(emp);
	 * Assert.assertEquals(appController.editEmployee(anyString(), model),
	 * "registration"); Assert.assertNotNull(model.get("employee"));
	 * Assert.assertTrue((Boolean) model.get("edit"));
	 * Assert.assertEquals(((Employee) model.get("employee")).getId(), 1); }
	 * 
	 * @Test public void updateEmployeeWithValidationError() {
	 * when(result.hasErrors()).thenReturn(true);
	 * doNothing().when(service).updateEmployee(any(Employee.class));
	 * Assert.assertEquals(appController.updateEmployee(employees.get(0), result,
	 * model, ""), "registration"); }
	 * 
	 * @Test public void updateEmployeeWithValidationErrorNonUniqueSSN() {
	 * when(result.hasErrors()).thenReturn(false);
	 * when(service.isEmployeeSsnUnique(anyInt(), anyString())).thenReturn(false);
	 * Assert.assertEquals(appController.updateEmployee(employees.get(0), result,
	 * model, ""), "registration"); }
	 * 
	 * @Test public void updateEmployeeWithSuccess() {
	 * when(result.hasErrors()).thenReturn(false);
	 * when(service.isEmployeeSsnUnique(anyInt(), anyString())).thenReturn(true);
	 * doNothing().when(service).updateEmployee(any(Employee.class));
	 * Assert.assertEquals(appController.updateEmployee(employees.get(0), result,
	 * model, ""), "success"); Assert.assertEquals(model.get("success"),
	 * "Employee Axel updated successfully"); }
	 * 
	 * @Test public void deleteEmployee() {
	 * doNothing().when(service).deleteEmployeeBySsn(anyString());
	 * Assert.assertEquals(appController.deleteEmployee("123"), "redirect:/list");
	 * }
	 */
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

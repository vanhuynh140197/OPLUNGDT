package com.oplungdienthoai.services;

import java.util.List;

import com.oplungdienthoai.model.GioHang;
import com.oplungdienthoai.model.ProductsEntity;

public interface ProductsService {

	public List<ProductsEntity> getAll();

	public ProductsEntity getProducts(String productsId);

	public List<ProductsEntity> getProductsUseProductType(String productTypesId);

	public boolean add(ProductsEntity products);

	public boolean edit(ProductsEntity products);

	public boolean remove(String productsId);

	public boolean checkBasket(GioHang gioHang);

	public GioHang getProductInGioHang(List<GioHang> gioHang, ProductsEntity productsEntity);
}

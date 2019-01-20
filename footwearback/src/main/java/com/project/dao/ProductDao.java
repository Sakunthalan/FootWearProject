package com.project.dao;

import java.util.List;

import com.project.model.Product;

public interface ProductDao {
	void insertProduct(Product product);
	Product get(int id);
	List<Product> productList();
	List<Product> getProdByCategoryId(String categoryId);
	void deleteProduct(int pid);
	void updateProduct(Product prod);
}
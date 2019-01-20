package com.project.dao;

import java.util.List;

import com.project.model.Category;

public interface CategoryDao {
	Category get(String id);
	void insertCategory(Category category);
	List<Category> categoryList();
}
package com.project.dao;

import java.util.List;

import com.project.model.Supplier;

public interface SupplierDao {
	
	Supplier get(String id);
	List<Supplier> supplierList();
	boolean addSupplier(Supplier supplier);
	boolean deleteSupplier(Supplier supplier);
	boolean updateSupplier(Supplier supplier);
}
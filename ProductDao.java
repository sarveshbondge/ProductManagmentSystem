package com.zensar.product.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zensar.product.model.Product;

public interface ProductDao extends JpaRepository<Product, Integer> {
	

}
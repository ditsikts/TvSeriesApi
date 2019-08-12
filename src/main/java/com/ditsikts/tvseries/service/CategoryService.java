package com.ditsikts.tvseries.service;

import java.util.List;

import com.ditsikts.tvseries.entity.Category;


public interface CategoryService {
	public List<Category> findAll();

	public Category findById(Long id);
	
	public void save(Category category);
	
	public void deleteById(Long id);
}

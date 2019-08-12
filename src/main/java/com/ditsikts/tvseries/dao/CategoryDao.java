package com.ditsikts.tvseries.dao;

import java.util.List;

import com.ditsikts.tvseries.entity.Category;

public interface CategoryDao {

	public List<Category> findAll();

	public Category findById(Long id);

	public void save(Category category);

	public void deleteById(Long id);
}

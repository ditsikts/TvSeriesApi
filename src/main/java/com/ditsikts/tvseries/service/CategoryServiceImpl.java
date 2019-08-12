package com.ditsikts.tvseries.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ditsikts.tvseries.dao.CategoryDao;
import com.ditsikts.tvseries.entity.Category;

@Service
public class CategoryServiceImpl implements CategoryService {

	private CategoryDao categoryDao;
	
	@Autowired
	public CategoryServiceImpl(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}
	
	@Override
	@Transactional
	public List<Category> findAll() {
		return categoryDao.findAll();
	}

	@Override
	@Transactional
	public Category findById(Long id) {
		return categoryDao.findById(id);
	}

	@Override
	@Transactional
	public void save(Category category) {
		categoryDao.save(category);

	}

	@Override
	@Transactional
	public void deleteById(Long id) {
		categoryDao.deleteById(id);
	}

}

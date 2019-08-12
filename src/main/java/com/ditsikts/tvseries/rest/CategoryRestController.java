package com.ditsikts.tvseries.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ditsikts.tvseries.entity.Category;
import com.ditsikts.tvseries.service.CategoryService;

@RestController
@RequestMapping("/api")
public class CategoryRestController {
	
	private CategoryService categoryService;
	
	@Autowired
	public CategoryRestController(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	
	@GetMapping("/categories")
	public List<Category> findAll(){
		return categoryService.findAll();
	}
}

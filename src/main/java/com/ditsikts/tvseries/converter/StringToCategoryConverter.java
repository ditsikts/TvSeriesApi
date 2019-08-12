package com.ditsikts.tvseries.converter;

import org.springframework.beans.factory.annotation.Autowired;

import com.ditsikts.tvseries.entity.Category;
import com.ditsikts.tvseries.service.CategoryService;
import com.fasterxml.jackson.databind.util.StdConverter;

public class StringToCategoryConverter extends StdConverter<String, Category> {

    @Autowired
    CategoryService categoryService;
	
	@Override
	public Category convert(String source) {
		Long id = Long.parseLong( source);
        Category category = categoryService.findById(id);
        return category;
	}

}

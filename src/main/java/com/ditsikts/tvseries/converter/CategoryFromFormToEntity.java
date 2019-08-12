package com.ditsikts.tvseries.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.ditsikts.tvseries.entity.Category;
import com.ditsikts.tvseries.service.CategoryService;

@Component
public class CategoryFromFormToEntity implements Converter<String, Category> {

    @Autowired
    CategoryService categoryService;
	
	@Override
	public Category convert(String source) {
		Long id = Long.parseLong( source);
        Category category = categoryService.findById(id);
        return category;
	}

}

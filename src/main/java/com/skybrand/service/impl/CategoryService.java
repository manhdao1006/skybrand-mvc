package com.skybrand.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skybrand.converter.CategoryConverter;
import com.skybrand.dto.CategoryDTO;
import com.skybrand.entity.CategoryEntity;
import com.skybrand.repository.CategoryRepository;
import com.skybrand.service.ICategoryService;

@Service
public class CategoryService implements ICategoryService{

	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private CategoryConverter categoryConverter;
	
	@Override
	public Map<Integer, String> findAll() {
		Map<Integer, String> result = new HashMap<Integer, String>();
		List<CategoryEntity> entities = categoryRepository.findAll();
		for (CategoryEntity item: entities) {
			result.put(item.getId(), item.getName());
		}
		return result;
	}

	@Override
	public List<CategoryDTO> findList() {
		List<CategoryDTO> result = new ArrayList<CategoryDTO>();
		List<CategoryEntity> entities = categoryRepository.findAll();
		for(CategoryEntity item: entities) {
			CategoryDTO cDTO = categoryConverter.toDTO(item);
			result.add(cDTO);
		}
		return result;
	}
}

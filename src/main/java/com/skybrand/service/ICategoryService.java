package com.skybrand.service;

import java.util.List;
import java.util.Map;

import com.skybrand.dto.CategoryDTO;

public interface ICategoryService {
	Map<Integer, String> findAll();
	List<CategoryDTO> findList();
}

package com.skybrand.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skybrand.converter.RadioConverter;
import com.skybrand.dto.RadioDTO;
import com.skybrand.entity.RadioEntity;
import com.skybrand.repository.RadioRepository;
import com.skybrand.service.IRadioService;

@Service
public class RadioService implements IRadioService{
	
	@Autowired
	private RadioRepository radioRepository;
	
	@Autowired
	private RadioConverter radioConverter;

	@Override
	public List<RadioDTO> findTop4ByCidOrderByCodeDesc_1() {
		List<RadioDTO> models = new ArrayList<RadioDTO>();
		List<RadioEntity> entities = radioRepository.findTop4ByCategoryIdOrderByCodeDesc(1);
		for(RadioEntity item : entities) {
			RadioDTO radioDTO = radioConverter.toDTO(item);
			models.add(radioDTO);
		}
		return models;
	}

	@Override
	public List<RadioDTO> findTop4ByCidOrderByCodeDesc_2() {
		List<RadioDTO> models = new ArrayList<RadioDTO>();
		List<RadioEntity> entities = radioRepository.findTop4ByCategoryIdOrderByCodeDesc(2);
		for(RadioEntity item : entities) {
			RadioDTO radioDTO = radioConverter.toDTO(item);
			models.add(radioDTO);
		}
		return models;
	}

	@Override
	public List<RadioDTO> findTop4ByCidOrderByCodeDesc_3() {
		List<RadioDTO> models = new ArrayList<RadioDTO>();
		List<RadioEntity> entities = radioRepository.findTop4ByCategoryIdOrderByCodeDesc(3);
		for(RadioEntity item : entities) {
			RadioDTO radioDTO = radioConverter.toDTO(item);
			models.add(radioDTO);
		}
		return models;
	}

	@Override
	public List<RadioDTO> findTop4ByCidOrderByCodeDesc_4() {
		List<RadioDTO> models = new ArrayList<RadioDTO>();
		List<RadioEntity> entities = radioRepository.findTop4ByCategoryIdOrderByCodeDesc(4);
		for(RadioEntity item : entities) {
			RadioDTO radioDTO = radioConverter.toDTO(item);
			models.add(radioDTO);
		}
		return models;
	}

	@Override
	public List<RadioDTO> findTop4ByCidOrderByCodeDesc_5() {
		List<RadioDTO> models = new ArrayList<RadioDTO>();
		List<RadioEntity> entities = radioRepository.findTop4ByCategoryIdOrderByCodeDesc(5);
		for(RadioEntity item : entities) {
			RadioDTO radioDTO = radioConverter.toDTO(item);
			models.add(radioDTO);
		}
		return models;
	}

	@Override
	public List<RadioDTO> findTop4ByCidOrderByCodeDesc_6() {
		List<RadioDTO> models = new ArrayList<RadioDTO>();
		List<RadioEntity> entities = radioRepository.findTop4ByCategoryIdOrderByCodeDesc(6);
		for(RadioEntity item : entities) {
			RadioDTO radioDTO = radioConverter.toDTO(item);
			models.add(radioDTO);
		}
		return models;
	}

	@Override
	public List<RadioDTO> findTop4ByCidOrderByCodeDesc_7() {
		List<RadioDTO> models = new ArrayList<RadioDTO>();
		List<RadioEntity> entities = radioRepository.findTop4ByCategoryIdOrderByCodeDesc(7);
		for(RadioEntity item : entities) {
			RadioDTO radioDTO = radioConverter.toDTO(item);
			models.add(radioDTO);
		}
		return models;
	}

	@Override
	public List<RadioDTO> findTop4ByCidOrderByCodeDesc_8() {
		List<RadioDTO> models = new ArrayList<RadioDTO>();
		List<RadioEntity> entities = radioRepository.findTop4ByCategoryIdOrderByCodeDesc(8);
		for(RadioEntity item : entities) {
			RadioDTO radioDTO = radioConverter.toDTO(item);
			models.add(radioDTO);
		}
		return models;
	}

	@Override
	public List<RadioDTO> findTop4ByCidOrderByCodeDesc_9() {
		List<RadioDTO> models = new ArrayList<RadioDTO>();
		List<RadioEntity> entities = radioRepository.findTop4ByCategoryIdOrderByCodeDesc(9);
		for(RadioEntity item : entities) {
			RadioDTO radioDTO = radioConverter.toDTO(item);
			models.add(radioDTO);
		}
		return models;
	}

}

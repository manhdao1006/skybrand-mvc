package com.skybrand.converter;

import org.springframework.stereotype.Component;

import com.skybrand.dto.RadioDTO;
import com.skybrand.entity.RadioEntity;

@Component
public class RadioConverter {

	public RadioDTO toDTO(RadioEntity entity) {
		RadioDTO result = new RadioDTO();
		result.setCode(entity.getCode());
		result.setName(entity.getName());
		result.setThumbnail(entity.getThumbnail());
		result.setSource(entity.getSource());
		result.setCid(entity.getCategory().getId());
		return result;
	}
	
	public RadioEntity toEntity(RadioDTO dto) {
		RadioEntity result = new RadioEntity();
		result.setCode(dto.getCode());
		result.setName(dto.getName());
		result.setThumbnail(dto.getThumbnail());
		result.setSource(dto.getSource());
		return result;
	}
	
	public RadioEntity toEntity(RadioEntity result, RadioDTO radioDTO) {
		result.setCode(radioDTO.getCode());
		result.setName(radioDTO.getName());
		result.setThumbnail(radioDTO.getThumbnail());
		result.setSource(radioDTO.getSource());
		return result;
	}
}

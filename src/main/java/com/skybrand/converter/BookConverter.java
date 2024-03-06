package com.skybrand.converter;

import org.springframework.stereotype.Component;

import com.skybrand.dto.BookDTO;
import com.skybrand.entity.BookEntity;

@Component
public class BookConverter {

	public BookDTO toDTO(BookEntity entity) {
		BookDTO result = new BookDTO();
		result.setCode(entity.getCode());
		result.setName(entity.getName());
		result.setThumbnail(entity.getThumbnail());
		result.setAuthor(entity.getAuthor());
		result.setPrice(entity.getPrice());
		result.setQuantity(entity.getQuantity());
		result.setPublishingYear(entity.getPublishingYear());
		result.setLanguage(entity.getLanguage());
		result.setForm(entity.getForm());
		result.setNumberPage(entity.getNumberPage());
		result.setWeight(entity.getWeight());
		result.setDescription(entity.getDescription());
		result.setCid(entity.getCategory().getId());
		return result;
	}
	
	public BookEntity toEntity(BookDTO dto) {
		BookEntity result = new BookEntity();
		result.setCode(dto.getCode());
		result.setName(dto.getName());
		result.setThumbnail(dto.getThumbnail());
		result.setAuthor(dto.getAuthor());
		result.setPrice(dto.getPrice());
		result.setQuantity(dto.getQuantity());
		result.setPublishingYear(dto.getPublishingYear());
		result.setLanguage(dto.getLanguage());
		result.setForm(dto.getForm());
		result.setNumberPage(dto.getNumberPage());
		result.setWeight(dto.getWeight());
		result.setDescription(dto.getDescription());
		return result;
	}
	
	public BookEntity toEntity(BookEntity result, BookDTO bookDTO) {
		result.setCode(bookDTO.getCode());
		result.setName(bookDTO.getName());
		result.setThumbnail(bookDTO.getThumbnail());
		result.setAuthor(bookDTO.getAuthor());
		result.setPrice(bookDTO.getPrice());
		result.setQuantity(bookDTO.getQuantity());
		result.setPublishingYear(bookDTO.getPublishingYear());
		result.setLanguage(bookDTO.getLanguage());
		result.setForm(bookDTO.getForm());
		result.setNumberPage(bookDTO.getNumberPage());
		result.setWeight(bookDTO.getWeight());
		result.setDescription(bookDTO.getDescription());
		return result;
	}
}

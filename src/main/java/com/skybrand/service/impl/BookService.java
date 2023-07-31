package com.skybrand.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.skybrand.converter.BookConverter;
import com.skybrand.dto.BookDTO;
import com.skybrand.entity.BookEntity;
import com.skybrand.entity.CategoryEntity;
import com.skybrand.repository.BookRepository;
import com.skybrand.repository.CategoryRepository;
import com.skybrand.service.IBookService;

@Service
public class BookService implements IBookService{

	@Autowired
	private BookRepository bookRepository;
	
	@Autowired
	private BookConverter bookConverter;
	
	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public List<BookDTO> findAll(Pageable pageable) {
		List<BookDTO> models = new ArrayList<BookDTO>();
		List<BookEntity> entities = bookRepository.findAll(pageable).getContent();
		for(BookEntity item : entities) {
			BookDTO bookDTO = bookConverter.toDTO(item);
			models.add(bookDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) bookRepository.count();
	}

	@Override
	public BookDTO findByCode(String code) {
		BookEntity entity = bookRepository.findOne(code);
		return bookConverter.toDTO(entity);
	}

	@Override
	@Transactional
	public BookDTO save(BookDTO bookDTO) {
		CategoryEntity category = categoryRepository.findOne(bookDTO.getCid());
		BookEntity bookEntity = new BookEntity();
		if(bookDTO.getId() != null) {//update
			BookEntity oldBook = bookRepository.findOne(bookDTO.getCode());
			oldBook.setCategory(category);
			bookEntity = bookConverter.toEntity(oldBook, bookDTO);
		}else {//insert
			bookEntity = bookConverter.toEntity(bookDTO);
			bookEntity.setCategory(category);
		}
		return bookConverter.toDTO(bookRepository.save(bookEntity));
	}

	@Override
	public void delete(String[] ids) {
		for(String id: ids) {
			bookRepository.delete(id);
		}
	}

	@Override
	public List<BookDTO> findAllByCategoryIdOrderByCodeDesc(Pageable pageable, int cid) {
		List<BookDTO> models = new ArrayList<BookDTO>();
		List<BookEntity> entities = bookRepository.findAllByCategoryIdOrderByCodeDesc(pageable, cid);
		for(BookEntity item : entities) {
			BookDTO bookDTO = bookConverter.toDTO(item);
			models.add(bookDTO);
		}
		return models;
	}
	
	@Override
	public List<BookDTO> findAll() {
		List<BookDTO> models = new ArrayList<BookDTO>();
		List<BookEntity> entities = bookRepository.findAll();
		for(BookEntity item : entities) {
			BookDTO bookDTO = bookConverter.toDTO(item);
			models.add(bookDTO);
		}
		return models;
	}

	@Override
	public List<BookDTO> findTop4ByCidOrderByCodeDesc_1() {
		List<BookDTO> models = new ArrayList<BookDTO>();
		List<BookEntity> entities = bookRepository.findTop4ByCategoryIdOrderByCodeDesc(1);
		for(BookEntity item : entities) {
			BookDTO bookDTO = bookConverter.toDTO(item);
			models.add(bookDTO);
		}
		return models;
	}

	@Override
	public List<BookDTO> findTop4ByCidOrderByCodeDesc_2() {
		List<BookDTO> models = new ArrayList<BookDTO>();
		List<BookEntity> entities = bookRepository.findTop4ByCategoryIdOrderByCodeDesc(2);
		for(BookEntity item : entities) {
			BookDTO bookDTO = bookConverter.toDTO(item);
			models.add(bookDTO);
		}
		return models;
	}

	@Override
	public List<BookDTO> findTop4ByCidOrderByCodeDesc_3() {
		List<BookDTO> models = new ArrayList<BookDTO>();
		List<BookEntity> entities = bookRepository.findTop4ByCategoryIdOrderByCodeDesc(3);
		for(BookEntity item : entities) {
			BookDTO bookDTO = bookConverter.toDTO(item);
			models.add(bookDTO);
		}
		return models;
	}

	@Override
	public List<BookDTO> findTop4ByCidOrderByCodeDesc_4() {
		List<BookDTO> models = new ArrayList<BookDTO>();
		List<BookEntity> entities = bookRepository.findTop4ByCategoryIdOrderByCodeDesc(4);
		for(BookEntity item : entities) {
			BookDTO bookDTO = bookConverter.toDTO(item);
			models.add(bookDTO);
		}
		return models;
	}

	@Override
	public List<BookDTO> findTop4ByCidOrderByCodeDesc_5() {
		List<BookDTO> models = new ArrayList<BookDTO>();
		List<BookEntity> entities = bookRepository.findTop4ByCategoryIdOrderByCodeDesc(5);
		for(BookEntity item : entities) {
			BookDTO bookDTO = bookConverter.toDTO(item);
			models.add(bookDTO);
		}
		return models;
	}

	@Override
	public List<BookDTO> findTop4ByCidOrderByCodeDesc_6() {
		List<BookDTO> models = new ArrayList<BookDTO>();
		List<BookEntity> entities = bookRepository.findTop4ByCategoryIdOrderByCodeDesc(6);
		for(BookEntity item : entities) {
			BookDTO bookDTO = bookConverter.toDTO(item);
			models.add(bookDTO);
		}
		return models;
	}

	@Override
	public List<BookDTO> findTop4ByCidOrderByCodeDesc_7() {
		List<BookDTO> models = new ArrayList<BookDTO>();
		List<BookEntity> entities = bookRepository.findTop4ByCategoryIdOrderByCodeDesc(7);
		for(BookEntity item : entities) {
			BookDTO bookDTO = bookConverter.toDTO(item);
			models.add(bookDTO);
		}
		return models;
	}

	@Override
	public List<BookDTO> findTop4ByCidOrderByCodeDesc_8() {
		List<BookDTO> models = new ArrayList<BookDTO>();
		List<BookEntity> entities = bookRepository.findTop4ByCategoryIdOrderByCodeDesc(8);
		for(BookEntity item : entities) {
			BookDTO bookDTO = bookConverter.toDTO(item);
			models.add(bookDTO);
		}
		return models;
	}

	@Override
	public List<BookDTO> findTop4ByCidOrderByCodeDesc_9() {
		List<BookDTO> models = new ArrayList<BookDTO>();
		List<BookEntity> entities = bookRepository.findTop4ByCategoryIdOrderByCodeDesc(9);
		for(BookEntity item : entities) {
			BookDTO bookDTO = bookConverter.toDTO(item);
			models.add(bookDTO);
		}
		return models;
	}
}

package com.skybrand.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.skybrand.dto.BookDTO;

public interface IBookService{
	List<BookDTO> findAll(Pageable pageable);
	int getTotalItem();
	BookDTO findByCode(String code);
	List<BookDTO> findAllByCategoryIdOrderByCodeDesc(Pageable pageable, int cid);
	List<BookDTO> findTop4ByCidOrderByCodeDesc_1();
	List<BookDTO> findTop4ByCidOrderByCodeDesc_2();
	List<BookDTO> findTop4ByCidOrderByCodeDesc_3();
	List<BookDTO> findTop4ByCidOrderByCodeDesc_4();
	List<BookDTO> findTop4ByCidOrderByCodeDesc_5();
	List<BookDTO> findTop4ByCidOrderByCodeDesc_6();
	List<BookDTO> findTop4ByCidOrderByCodeDesc_7();
	List<BookDTO> findTop4ByCidOrderByCodeDesc_8();
	List<BookDTO> findTop4ByCidOrderByCodeDesc_9();
	List<BookDTO> findAll();
	BookDTO save(BookDTO dto);
	void delete(String[] ids);
}

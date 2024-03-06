package com.skybrand.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.skybrand.entity.BookEntity;

public interface BookRepository extends JpaRepository<BookEntity, String>{
	
	List<BookEntity> findTop4ByCategoryIdOrderByCodeDesc(Integer cid);

	List<BookEntity> findAllByCategoryIdOrderByCodeDesc(Pageable pageable, Integer cid);
	
}

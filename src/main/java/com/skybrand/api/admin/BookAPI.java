package com.skybrand.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.skybrand.dto.BookDTO;
import com.skybrand.service.IBookService;

@RestController(value = "bookAPIOfAdmin")
public class BookAPI {

	@Autowired
	private IBookService bookService;
	
	@PostMapping("api/book")
	public BookDTO createBook(@RequestBody BookDTO bookDTO) {
		return bookService.save(bookDTO);
	}
	
	@PutMapping("api/book")
	public BookDTO updateBook(@RequestBody BookDTO updateBook) {
		return bookService.save(updateBook);
	}
	
	@DeleteMapping("api/book")
	public void deleteBook(@RequestBody String[] ids) {
		bookService.delete(ids);
		//mang nhieu sach
	}
}

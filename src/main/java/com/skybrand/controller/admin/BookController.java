package com.skybrand.controller.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skybrand.dto.BookDTO;
import com.skybrand.service.IBookService;
import com.skybrand.service.ICategoryService;
import com.skybrand.util.MessageUtil;

@Controller
public class BookController {
	
	@Autowired
	private IBookService bookService;
	
	@Autowired
	private ICategoryService categoryService;
	
	@Autowired
	private MessageUtil messageUtil;
	
//	GET la lay thong tin tu DB len
	@RequestMapping(value = "/quan-tri/bai-viet/danh-sach", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page,
								@RequestParam("limit") int limit,
								HttpServletRequest request) {
		BookDTO model = new BookDTO();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("admin/book/list");
		Pageable pageable = new PageRequest(page-1, limit);
		model.setListResult(bookService.findAll(pageable));
		model.setTotalItem(bookService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		if(request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("cList", categoryService.findList());
		mav.addObject("model", model);
		return mav;
	}
	
	@RequestMapping(value = "/quan-tri/bai-viet/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editBook(@RequestParam(value = "code", required = false) String code,
								HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/book/edit");
		BookDTO model = new BookDTO();
		if(code != null) {
			model = bookService.findByCode(code);
		}
		if(request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("categories", categoryService.findAll());
		mav.addObject("cList", categoryService.findList());
		mav.addObject("model", model);
		return mav;
	}
}

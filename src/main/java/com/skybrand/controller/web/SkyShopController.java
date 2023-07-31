package com.skybrand.controller.web;

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

@Controller
public class SkyShopController {

	@Autowired
	private IBookService bookService;

	@Autowired
	private ICategoryService categoryService;

//	GET la lay thong tin tu DB len
	@RequestMapping(value = "/skyshop", method = RequestMethod.GET)
	public ModelAndView skyShopPage() {
		ModelAndView mav = new ModelAndView("web/skyshop/skyshop");
		mav.addObject("skb", bookService.findTop4ByCidOrderByCodeDesc_1());
		mav.addObject("skn", bookService.findTop4ByCidOrderByCodeDesc_2());
		mav.addObject("skc", bookService.findTop4ByCidOrderByCodeDesc_3());
		mav.addObject("skm", bookService.findTop4ByCidOrderByCodeDesc_4());
		mav.addObject("sks", bookService.findTop4ByCidOrderByCodeDesc_5());
		mav.addObject("skh", bookService.findTop4ByCidOrderByCodeDesc_6());
		mav.addObject("skw", bookService.findTop4ByCidOrderByCodeDesc_7());
		mav.addObject("skk", bookService.findTop4ByCidOrderByCodeDesc_8());
		mav.addObject("skd", bookService.findTop4ByCidOrderByCodeDesc_9());
		mav.addObject("categories", categoryService.findList());
		return mav;
	}

	@RequestMapping(value = "/skyshop/danh-sach", method = RequestMethod.GET)
	public ModelAndView listPage(@RequestParam(value="cid") Integer cid,
								 @RequestParam("page") int page, 
								 @RequestParam("limit") int limit
								 ) {
		ModelAndView mav = new ModelAndView("web/skyshop/list");
		BookDTO model = new BookDTO();
		model.setPage(page);
		model.setLimit(limit);
		model.setCid(cid);
		Pageable pagegable = new PageRequest(page-1, limit);
		model.setListResult(bookService.findAllByCategoryIdOrderByCodeDesc(pagegable, cid));
		model.setTotalItem(bookService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("categories", categoryService.findList());
		mav.addObject("model", model);
		return mav;
	}
	
	@RequestMapping(value = "/skyshop/danh-sach/chi-tiet", method = RequestMethod.GET)
	public ModelAndView detailsPage(@RequestParam("code") String code) {
		ModelAndView mav = new ModelAndView("web/skyshop/details");
		BookDTO model = new BookDTO();
		if (code != null) {
			model.setCode(code);
			model = bookService.findByCode(code);
		}
		mav.addObject("categories", categoryService.findList());
		mav.addObject("model", model);
		return mav;
	}
}
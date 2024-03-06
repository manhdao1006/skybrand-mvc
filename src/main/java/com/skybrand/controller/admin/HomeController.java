package com.skybrand.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skybrand.service.ICategoryService;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {
	
	@Autowired
	private ICategoryService categoryService;
	
//	GET la lay thong tin tu DB len
	@RequestMapping(value = "/quan-tri/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("admin/home");
		mav.addObject("cList", categoryService.findList());
		return mav;
	}
}

package com.skybrand.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skybrand.service.ICategoryService;
import com.skybrand.service.IRadioService;

@Controller
public class SkyRadioController {
	
	@Autowired
	private IRadioService radioService;

	@Autowired
	private ICategoryService categoryService;

//	GET la lay thong tin tu DB len
	@RequestMapping(value = "/skyradio", method = RequestMethod.GET)
	public ModelAndView skyRadioPage() {
		ModelAndView mav = new ModelAndView("web/skyradio/skyradio");
		mav.addObject("skb", radioService.findTop4ByCidOrderByCodeDesc_1());
		mav.addObject("skn", radioService.findTop4ByCidOrderByCodeDesc_2());
		mav.addObject("skc", radioService.findTop4ByCidOrderByCodeDesc_3());
		mav.addObject("skm", radioService.findTop4ByCidOrderByCodeDesc_4());
		mav.addObject("sks", radioService.findTop4ByCidOrderByCodeDesc_5());
		mav.addObject("skh", radioService.findTop4ByCidOrderByCodeDesc_6());
		mav.addObject("skw", radioService.findTop4ByCidOrderByCodeDesc_7());
		mav.addObject("skk", radioService.findTop4ByCidOrderByCodeDesc_8());
		mav.addObject("skd", radioService.findTop4ByCidOrderByCodeDesc_9());
		mav.addObject("categories", categoryService.findList());
		return mav;
	}
}
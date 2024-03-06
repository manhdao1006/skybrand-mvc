package com.skybrand.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "loginControllerOfWeb")
public class LoginController {

//	GET la lay thong tin tu DB len
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView skyShopPage() {
		ModelAndView mav = new ModelAndView("web/login");
		return mav;
	}
}
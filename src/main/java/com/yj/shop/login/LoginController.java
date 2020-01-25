package com.yj.shop.login;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(value = "/login/index", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		
		return "login";
	}
}

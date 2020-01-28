package com.yj.shop;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		
		return "Main";
	}
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
		return "home";
	}
	
	@RequestMapping(value = "/ex", method = RequestMethod.GET)
	public String ex(Locale locale, Model model) {
		
		return "ex";
	}
	@RequestMapping(value = "/fixed", method = RequestMethod.GET)
	public String fixed(Locale locale, Model model) {
		
		return "/bike/fixed_list";
	}
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		
		return "join";
	}
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(Locale locale, Model model) {
		return "mypage";
	}
	@RequestMapping(value = "/order_deliver", method = RequestMethod.GET)
	public String order_deliver(Locale locale, Model model) {
		return "order_deliver";
	}
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cart(Locale locale, Model model) {
		return "cart";
	}
	@RequestMapping(value = "/interest", method = RequestMethod.GET)
	public String interest(Locale locale, Model model) {
		return "interest";
	}
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice(Locale locale, Model model) {
		return "notice";
	}
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public String qna(Locale locale, Model model) {
		return "qna";
	}
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faq(Locale locale, Model model) {
		return "faq";
	}
	@RequestMapping(value = "/review", method = RequestMethod.GET)
	public String review(Locale locale, Model model) {
		return "review";
	}
	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public String event(Locale locale, Model model) {
		return "event";
	}
}

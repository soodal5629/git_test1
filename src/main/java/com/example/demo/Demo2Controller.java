package com.example.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Demo2Controller {

	@RequestMapping("/hello2")
	public String hello(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		request.setAttribute("message", "hi cl");
		System.out.println("작동1");
		return "index";
	}
	
	
	@RequestMapping(value="/prac")
	public String practice() {
		System.out.println("작동2");
		return "index2";
	}
}

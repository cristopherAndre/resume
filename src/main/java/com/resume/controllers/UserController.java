package com.resume.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.resume.daos.UserRepository;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserRepository repository;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView showUsers() {
		ModelAndView modelAndView = new ModelAndView("user/user-list");
		modelAndView.addObject("users", repository.findAll());
		return modelAndView;
	};

	@RequestMapping(value = "/detail/{nickName}", method = RequestMethod.GET)
	public ModelAndView showUserDetail(@PathVariable("nickName") String nickName) {
		ModelAndView modelAndView = new ModelAndView("user/user-detail");
		modelAndView.addObject("user", repository.findByNickName(nickName));
		return modelAndView;
	};

}

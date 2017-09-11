package com.resume.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.resume.daos.UserRepository;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserRepository repository;

	@RequestMapping("/detail/{nickName}")
	public ModelAndView showUserDetail(@PathVariable("nickName") String nickName) {
		ModelAndView modelAndView = new ModelAndView("user/userDetail");
		modelAndView.addObject("user", repository.findByNickName(nickName));
		return modelAndView;
	};

	@RequestMapping("/list")
	public ModelAndView showUsers() {
		ModelAndView modelAndView = new ModelAndView("user/userList");
		modelAndView.addObject("users", repository.findAll());
		return modelAndView;
	};

}

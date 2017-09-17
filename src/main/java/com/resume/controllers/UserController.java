package com.resume.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.resume.daos.UserRepository;
import com.resume.models.User;
import com.resume.validation.UserValidation;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserRepository repository;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.addValidators(new UserValidation());
	}

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
	
	@RequestMapping(value = "/form-add", method = RequestMethod.GET)
	public ModelAndView formAdd(User user) {
		return new ModelAndView("user/user-form-add");
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@Valid User user, BindingResult result) {
		if (result.hasErrors()) {
			return formAdd(user);
		}
		if(user.getPassword() != null){
			user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
		}
		repository.save(user);
		return new ModelAndView("redirect:/user/list");
	}
	
	@RequestMapping("/{id}")
	public ModelAndView load(@PathVariable("id") Integer id) {
		ModelAndView modelAndView = new ModelAndView("user/user-form-update");
		modelAndView.addObject("user", repository.findById(id));
		return modelAndView;
	}
	
	@RequestMapping("/remove/{id}")
	public ModelAndView remove(@PathVariable("id") Integer id) {
		repository.delete(repository.findById(id));
		return new ModelAndView("redirect:/user/list");
	}
	
	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id") Integer id, @Valid User user, BindingResult result) {
		user.setId(id);
		if (result.hasErrors()) {
			return new ModelAndView("user/user-form-update");
		}
		repository.save(user);
		return new ModelAndView("redirect:/user/list");
	}

}

package com.resume.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.resume.daos.RoleRepository;
import com.resume.models.Role;

@Controller
@RequestMapping("/role")
public class RoleController {

	@Autowired
	RoleRepository repository;

	@RequestMapping("/detail/{code}")
	public ModelAndView showRoleDetail(@PathVariable("code") String code) {
		ModelAndView modelAndView = new ModelAndView("role/roleDetail");
		modelAndView.addObject("role", repository.findByCode(code).size() > 0 ? repository.findByCode(code).get(0) : null);
		return modelAndView;
	}

	@RequestMapping("/list")
	public ModelAndView showRoles() {
		ModelAndView modelAndView = new ModelAndView("role/roleList");
		modelAndView.addObject("roles", repository.findAll());
		return modelAndView;
	}

	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public ModelAndView form(Role role) {
		return new ModelAndView("role/roleFormAdd");
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(Role role) {
		repository.save(role);
		return new ModelAndView("redirect:/role/list");
	}

}

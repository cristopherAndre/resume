package com.resume.controllers;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.resume.daos.RoleRepository;
import com.resume.models.Role;
import com.resume.validation.RoleValidation;

@Controller
@RequestMapping("/role")
public class RoleController {

	@Autowired
	RoleRepository repository;
	
	@PersistenceContext
	private EntityManager manager;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.addValidators(new RoleValidation());
	}

	@RequestMapping("/detail/{code}")
	public ModelAndView showRoleDetail(@PathVariable("code") String code) {
		ModelAndView modelAndView = new ModelAndView("role/roleDetail");
		modelAndView.addObject("role", repository.findByCode(code).size() > 0 ? repository.findByCode(code).get(0) : null);
		return modelAndView;
	}

	@RequestMapping("/list")
	public ModelAndView showRoles() {
		ModelAndView modelAndView = new ModelAndView("role/roleList");
		//modelAndView.addObject("roles", repository.findAll());
		modelAndView.addObject("roles", manager.createQuery("select r from Role r", Role.class).getResultList());
		return modelAndView;
	}

	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public ModelAndView form(Role role) {
		return new ModelAndView("role/roleFormAdd");
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@Valid Role role, BindingResult result) {
		if (result.hasErrors()) {
			return form(role);
		}
		repository.save(role);
		return new ModelAndView("redirect:/role/list");
	}

}

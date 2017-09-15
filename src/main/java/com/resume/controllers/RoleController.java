package com.resume.controllers;

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

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.addValidators(new RoleValidation());
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView showRoles() {
		ModelAndView modelAndView = new ModelAndView("role/role-list");
		modelAndView.addObject("roles", repository.findAll());
		return modelAndView;
	}

	@RequestMapping(value = "/detail/{code}", method = RequestMethod.GET)
	public ModelAndView showRoleDetail(@PathVariable("code") String code) {
		ModelAndView modelAndView = new ModelAndView("role/role-detail");
		modelAndView.addObject("role", repository.findByCode(code).size() > 0 ? repository.findByCode(code).get(0) : null);
		return modelAndView;
	}

	@RequestMapping(value = "/form-add", method = RequestMethod.GET)
	public ModelAndView formAdd(Role role) {
		return new ModelAndView("role/role-form-add");
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@Valid Role role, BindingResult result) {
		if (result.hasErrors()) {
			return formAdd(role);
		}
		repository.save(role);
		return new ModelAndView("redirect:/role/list");
	}
	
	@RequestMapping("/{code}")
	public ModelAndView load(@PathVariable("code") String code) {
		ModelAndView modelAndView = new ModelAndView("role/role-form-update");
		modelAndView.addObject("role", repository.findByCode(code).size() > 0 ? repository.findByCode(code).get(0) : null);
		return modelAndView;
	}
	
	@RequestMapping("/remove/{code}")
	public ModelAndView remove(@PathVariable("code") String code) {
		repository.delete(repository.findByCode(code));
		return showRoles();
	}
	
	@RequestMapping("/update/{code}")
	public ModelAndView update(@PathVariable("code") String code, @Valid Role role, BindingResult result) {
		if (result.hasErrors()) {
			return new ModelAndView("role/role-form-update");
		}
		repository.save(role);
		return showRoles();
	}

}

package com.resume.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.resume.converters.SkillPropertyEditor;
import com.resume.daos.SkillRepository;
import com.resume.daos.UserRepository;
import com.resume.models.Skill;
import com.resume.models.User;
import com.resume.validation.UserValidation;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserRepository repository;
	
	@Autowired
	private SkillRepository skillRepository;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.addValidators(new UserValidation());
		binder.registerCustomEditor(Skill.class, new SkillPropertyEditor(skillRepository));
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	@Cacheable(value = "showUsers")
	public ModelAndView showUsers() {
		ModelAndView modelAndView = new ModelAndView("user/user-list");
		modelAndView.addObject("users", repository.findAll());
		return modelAndView;
	};

	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	@Cacheable(value = "showUserDetail")
	public ModelAndView showUserDetail(@PathVariable("id") Integer id) {
		ModelAndView modelAndView = new ModelAndView("user/user-detail");
		modelAndView.addObject("user", repository.findById(id));
		return modelAndView;
	};
	
	@RequestMapping(value = "/form-add", method = RequestMethod.GET)
	public ModelAndView formAdd(User user) {
		return loadFormDependencies(new ModelAndView("user/user-form-add"));
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@CacheEvict(value = {"showUsers","showUserDetail", "load"}, allEntries = true)
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
	@Cacheable(value = "load")
	public ModelAndView load(@PathVariable("id") Integer id) {
		ModelAndView modelAndView = new ModelAndView("user/user-form-update");
		modelAndView.addObject("user", repository.findById(id));
		loadFormDependencies(modelAndView);
		return modelAndView;
	}
	
	@RequestMapping("/remove/{id}")
	@CacheEvict(value = {"showUsers","showUserDetail", "load"}, allEntries = true)
	public ModelAndView remove(@PathVariable("id") Integer id) {
		repository.delete(repository.findById(id));
		return new ModelAndView("redirect:/user/list");
	}
	
	@RequestMapping("/update/{id}")
	@CacheEvict(value = {"showUsers","showUserDetail", "load"}, allEntries = true)
	public ModelAndView update(@PathVariable("id") Integer id, @Valid User user, BindingResult result) {
		user.setId(id);
		if (result.hasErrors()) {
			return loadFormDependencies(new ModelAndView("user/user-form-update"));
		}
		repository.save(user);
		return new ModelAndView("redirect:/user/list");
	}
	
	private ModelAndView loadFormDependencies(ModelAndView modelAndView) {
		modelAndView.addObject("skillList", skillRepository.findAll());
		return modelAndView;
	}

}

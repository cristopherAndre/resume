package com.resume.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.resume.models.Role;

public class RoleValidation implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return Role.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "code", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "description", "field.required");
		
		//Example
//		Produto produto = (Produto) target;
//		if (produto.getPaginas() <= 0) {
//			errors.rejectValue("paginas", "field.required");
//		}
		
	}

}

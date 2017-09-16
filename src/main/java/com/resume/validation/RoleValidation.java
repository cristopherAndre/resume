package com.resume.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.resume.models.Role;

public class RoleValidation implements Validator {

//	@Autowired
//	RoleRepository repository;
	
	private static String FIELD_REQUIRED = "field.required";
//	private static String CODE_ALREDY_EXISTS = "role.code.already.exists";

	@Override
	public boolean supports(Class<?> clazz) {
		return Role.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "code", FIELD_REQUIRED);
		ValidationUtils.rejectIfEmpty(errors, "description", FIELD_REQUIRED);

//		Role role = (Role) target;
//		if(repository.findById(role.getId()) != null){
//			errors.rejectValue("code", CODE_ALREDY_EXISTS);
//		}
		
		// Example
		// Produto produto = (Produto) target;
		// if (produto.getPaginas() <= 0) {
		// errors.rejectValue("paginas", "field.required");
		// }

	}

}

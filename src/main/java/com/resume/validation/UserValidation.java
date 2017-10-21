package com.resume.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.resume.models.User;

public class UserValidation implements Validator {

	private static String FIELD_REQUIRED = "field.required";

	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "nickName", FIELD_REQUIRED);
		ValidationUtils.rejectIfEmpty(errors, "firstName", FIELD_REQUIRED);
		ValidationUtils.rejectIfEmpty(errors, "lastName", FIELD_REQUIRED);
		ValidationUtils.rejectIfEmpty(errors, "mail", FIELD_REQUIRED);
		ValidationUtils.rejectIfEmpty(errors, "password", FIELD_REQUIRED);
		ValidationUtils.rejectIfEmpty(errors, "title", FIELD_REQUIRED);
		ValidationUtils.rejectIfEmpty(errors, "description", FIELD_REQUIRED);
		ValidationUtils.rejectIfEmpty(errors, "aboutMe", FIELD_REQUIRED);
	}

}

package com.cognizant.truyum.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.cognizant.truyum.model.MenuItem;

@Component
public class MyFormValidator implements Validator  {

	@Override
	public boolean supports(Class<?> clazz) {
		return  MenuItem.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		ValidationUtils.rejectIfEmpty(errors, "name", "menu.name.empty");
		ValidationUtils.rejectIfEmpty(errors, "price", "menu.price.empty");
		ValidationUtils.rejectIfEmpty(errors, "dateOfLaunch", "menu.date.empty");
		//ValidationUtils.rejectIfEmpty(errors, "freeDelivery", "It can't be blank");
	}

}

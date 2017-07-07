package com.ht.event.validator;

/**
 * Created by tanvigupta on 06/07/17.
 */

import com.ht.event.model.Event;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class FormValidator implements Validator{

    @Override
    public boolean supports(Class eventClass) {
        return Event.class.isAssignableFrom(eventClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Event e = (Event) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "category", "required.category");

        if("NONE".equals(e.getCategory())){
            errors.rejectValue("category","required.category");
        }
    }
}

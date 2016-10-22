package fi.javaee.aanilevy.bean.validation;

import java.util.Calendar;


import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class EiTulevaisuudessaValidator implements ConstraintValidator<EiTulevaisuudessa, Integer>{

	public void initialize(EiTulevaisuudessa eitulevaisuudessa) {
		
	}

	public boolean isValid(Integer value, ConstraintValidatorContext context) {
		int kuluvaVuosi = Calendar.getInstance().get(Calendar.YEAR);
		if (value != null && value != 0 &&  value > kuluvaVuosi){
			return false;
		}
		else {
			return true;
		}
	}

}

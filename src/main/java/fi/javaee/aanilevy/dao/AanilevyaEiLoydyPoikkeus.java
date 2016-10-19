package fi.javaee.aanilevy.dao;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@SuppressWarnings("serial")
@ResponseStatus(value=HttpStatus.NOT_FOUND)
public class AanilevyaEiLoydyPoikkeus extends RuntimeException {
	
	public AanilevyaEiLoydyPoikkeus(Exception cause) {
		super(cause);
	}
	
}
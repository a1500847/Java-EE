package fi.javaee.aanilevy.dao;

import java.util.List;

import org.springframework.security.access.prepost.PreAuthorize;

import fi.javaee.aanilevy.bean.Aanilevy;

public interface AanilevyDAO {
	
	@PreAuthorize("permitAll")
	public abstract List<Aanilevy> haeKaikki();
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public abstract void talleta(Aanilevy a);
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public abstract Aanilevy etsi(int id);

	
	//@PreAuthorize("hasRole('ROLE_ADMIN')")
	//public abstract void poista(int id);
	
}

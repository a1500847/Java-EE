package fi.javaee.aanilevy.dao;

import java.util.List;

import fi.javaee.aanilevy.bean.Aanilevy;

public interface AanilevyDAO {
	
	//public abstract void talleta(Aanilevy aanilevy);

	//public abstract Aanilevy etsi(int id);

	public abstract List<Aanilevy> haeKaikki();
	
}

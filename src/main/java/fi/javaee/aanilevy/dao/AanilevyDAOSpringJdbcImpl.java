package fi.javaee.aanilevy.dao;

import java.util.List;

import javax.inject.Inject;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import fi.javaee.aanilevy.bean.Aanilevy;

@Repository
public class AanilevyDAOSpringJdbcImpl implements AanilevyDAO{
	
	@Inject
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public List<Aanilevy> haeKaikki() {
		String sql = "select * from album";
		RowMapper<Aanilevy> mapper = new AanilevyRowMapper();
		List<Aanilevy> levyt = jdbcTemplate.query(sql,mapper);

		return levyt;
	}
	
	
}

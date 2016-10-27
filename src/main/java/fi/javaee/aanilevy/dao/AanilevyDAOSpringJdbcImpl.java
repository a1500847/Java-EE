package fi.javaee.aanilevy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
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

	public void talleta(Aanilevy a) {
		final String sql = "insert into album (title, artist, year, imglocation) values (?, ?, ?, ?);";
		
		final String title = a.getTitle();
		final String artist = a.getArtist();
		final Integer year = a.getYear();
		final String imgLocation = a.getImgLocation();
		
		KeyHolder idHolder = new GeneratedKeyHolder();
		
		jdbcTemplate.update(
	    	    new PreparedStatementCreator() {
	    	        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
	    	            PreparedStatement ps = connection.prepareStatement(sql, new String[] {"id"});
	    	            ps.setString(1, title);
	    	            ps.setString(2, artist);
	    	            ps.setInt(3, year);
	    	            ps.setString(4, imgLocation);	    	       
	    	            return ps;
	    	        }
	    	    }, idHolder);
	
	    a.setId(idHolder.getKey().intValue());
		
		
	}

	public Aanilevy etsi(int id) {
		String sql = "select * from album where id = ?";
		Object[] parametrit = new Object[] { id };
		RowMapper<Aanilevy> mapper = new AanilevyRowMapper();
		
	    Aanilevy a;
	    try { 
	    a = jdbcTemplate.queryForObject(sql , parametrit, mapper);
	    } catch(IncorrectResultSizeDataAccessException e) {
	    	System.out.println("Virhe tietokannasta haussa");
	    	throw new AanilevyaEiLoydyPoikkeus(e);
	    }
		return a;
	}

	public void poista(int id) {
		String sql = "delete from album where id = ?";
		Object[] parametrit = new Object[] {id};
		jdbcTemplate.update(sql, parametrit);
	}
	
	
}

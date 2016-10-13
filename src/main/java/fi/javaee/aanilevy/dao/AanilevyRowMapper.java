package fi.javaee.aanilevy.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import fi.javaee.aanilevy.bean.Aanilevy;
import fi.javaee.aanilevy.bean.AanilevyImpl;

public class AanilevyRowMapper implements RowMapper<Aanilevy>{

	public Aanilevy mapRow(ResultSet rs, int rowNum) throws SQLException {
		Aanilevy a = new AanilevyImpl();
		a.setId(rs.getInt("id"));
		a.setTitle(rs.getString("title"));
		a.setArtist(rs.getString("artist"));
		a.setYear(rs.getInt("year"));
		a.setImgLocation(rs.getString("imglocation"));
		
		return a;
	}
	
}

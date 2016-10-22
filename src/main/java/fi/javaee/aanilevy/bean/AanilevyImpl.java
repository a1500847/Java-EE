package fi.javaee.aanilevy.bean;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import fi.javaee.aanilevy.bean.validation.EiTulevaisuudessa;


public class AanilevyImpl implements Aanilevy{
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@NotNull
	@Size(min = 1, max = 255)
	private String title;
	
	@NotNull
	@Size(min = 1, max = 255)
	private String artist;
	
	@NotNull
	@Min(1877)
	@EiTulevaisuudessa
	private Integer year;
	
	
	private String imgLocation;
	
	public AanilevyImpl() {
		super();
	}

	public AanilevyImpl(int id, String title, String artist, Integer year,
			String imgLocation) {
		super();
		this.id = id;
		this.title = title;
		this.artist = artist;
		this.year = year;
		this.imgLocation = imgLocation;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public String getImgLocation() {
		return imgLocation;
	}

	public void setImgLocation(String imgLocation) {
		this.imgLocation = imgLocation;
	}

	@Override
	public String toString() {
		return "AanilevyImpl [id=" + id + ", title=" + title + ", artist="
				+ artist + ", year=" + year + ", imgLocation=" + imgLocation + "]";
	}
	
	

}

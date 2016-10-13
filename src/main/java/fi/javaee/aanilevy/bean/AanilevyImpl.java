package fi.javaee.aanilevy.bean;

import org.springframework.stereotype.Component;

@Component
public class AanilevyImpl implements Aanilevy{
	
	private int id;
	private String title;
	private String artist;
	private int year;
	private String imagePath;
	
	public AanilevyImpl() {
		super();
	}

	public AanilevyImpl(int id, String title, String artist, int year,
			String imagePath) {
		super();
		this.id = id;
		this.title = title;
		this.artist = artist;
		this.year = year;
		this.imagePath = imagePath;
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

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@Override
	public String toString() {
		return "AanilevyImpl [id=" + id + ", title=" + title + ", artist="
				+ artist + ", year=" + year + ", imagePath=" + imagePath + "]";
	}
	
	

}

package fi.javaee.aanilevy.bean;

public class AanilevyImpl implements Aanilevy{
	
	private int id;
	private String title;
	private String artist;
	private int year;
	private String imgLocation;
	
	public AanilevyImpl() {
		super();
	}

	public AanilevyImpl(int id, String title, String artist, int year,
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

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
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

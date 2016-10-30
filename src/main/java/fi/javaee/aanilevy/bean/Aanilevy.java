package fi.javaee.aanilevy.bean;

public interface Aanilevy {
	
	public abstract int getId();
	
	public abstract void setId(int id);

	public abstract String getTitle();

	public abstract void setTitle(String title);

	public abstract String getArtist();

	public abstract void setArtist(String artist);
	
	public abstract Integer getYear();
	
	public abstract void setYear(Integer year);
	
	public abstract String getImgLocation();

	public abstract void setImgLocation(String imgLocation);
	
}

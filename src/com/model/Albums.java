 package com.model;

public class Albums {
	private int album_id;
	private String album_name;
	private int year;
	private String language;

	public int getAlbum_id() {
		return album_id;
	}

	public void setAlbum_id(int album_id) {
		this.album_id = album_id;
	}

	public String getAlbum_name() {
		return album_name;
	}

	public void setAlbum_name(String album_name) {
		this.album_name = album_name;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public Albums() {
	}

	public Albums(int album_id, String album_name, int year, String language) {
		this.album_id = album_id;
		this.album_name = album_name;
		this.year = year;
		this.language = language;
	}

	@Override
	public String toString() {
		return "Albums [album_id=" + album_id + ", album_name=" + album_name + ", year=" + year + ", language="
				+ language + "]";
	}
}

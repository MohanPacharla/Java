package com.model;

public class Artists {
	private int artist_id;
	private String artist_name;
	private String profession;
	
	public int getArtist_id() {
		return artist_id;
	}
	public void setArtist_id(int artist_id) {
		this.artist_id = artist_id;
	}
	public String getArtist_name() {
		return artist_name;
	}
	public void setArtist_name(String artist_name) {
		this.artist_name = artist_name;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public Artists() {
		
	}
	public Artists(int artist_id, String artist_name, String profession) {
		this.artist_id = artist_id;
		this.artist_name = artist_name;
		this.profession = profession;
	}
	@Override
	public String toString() {
		return "Artists [artist_id=" + artist_id + ", artist_name=" + artist_name + ", profession=" + profession + "]";
	}
	

}

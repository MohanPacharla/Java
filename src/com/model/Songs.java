package com.model;

public class Songs {
	private int songid;   
	private String songname; 
	private String songlyrics;
	public int getSongid() {
		return songid;
	}
	public void setSong_id(int songid) {
		this.songid = songid;
	}
	public String getSong_name() {
		return songname;
	}
	public void setSongname(String songname) {
		this.songname = songname;
	}
	public String getSonglyrics() {
		return songlyrics;
	}
	public void setSonglyrics(String songlyrics) {
		this.songlyrics = songlyrics;
	}
	public Songs() {
		
	}
	public Songs(int songid, String songname, String songlyrics) {
		this.songid = songid;
		this.songname = songname;
		this.songlyrics = songlyrics;
	}
	@Override
	public String toString() {
		return "Songs [songid=" + songid + ", songname=" + songname + ", songlyrics=" + songlyrics + "]";
	} 	
}

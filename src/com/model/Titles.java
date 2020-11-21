package com.model;

public class Titles {
	private int title_id;   
	 private String title_name; 
	public int getTitle_id() {
		return title_id;
	}
	public void setTitle_id(int title_id) {
		this.title_id = title_id;
	}
	public String getTitle_name() {
		return title_name;
	}
	public void setTitle_name(String title_name) {
		this.title_name = title_name;
	}
	public Titles() {
		
	}
	public Titles(int title_id, String title_name) {
		this.title_id = title_id;
	}
	@Override
	public String toString() {
		return "Titles [title_id=" + title_id + ", title_name=" + title_name + "]";
	}
	 
}

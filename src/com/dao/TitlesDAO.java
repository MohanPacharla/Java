package com.dao;

import java.util.ArrayList;

import com.model.Titles;

public interface TitlesDAO {
	
	public boolean addTitles(Titles t);
	public ArrayList<Titles> listTitles();
	public boolean deleteTitles(Titles t);
	
}

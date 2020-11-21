package com.dao;

import java.util.ArrayList;

import com.model.Genres;

public interface GenresDAO {
	public boolean addGenres(Genres g);

	ArrayList<Genres> listGneres();

	public boolean deleteGenres(Genres d);	
}

package com.dao;

import java.util.ArrayList;

import com.model.Artists;

public interface ArtistsDAO {
	
	public boolean addArtists(Artists a);
	public ArrayList<Artists> listArtists();
	public boolean deleteArtists(Artists n);
	
}

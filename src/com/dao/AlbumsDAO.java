package com.dao;

import java.util.ArrayList;

import com.model.*;

public interface AlbumsDAO {
	
	public boolean addAlbums(Albums p);
	public ArrayList<Albums> listAlbums();
	public boolean deleteAlbums(Albums k);
}

package com.dao;

import java.util.ArrayList;

import com.model.Songs;

public interface SongDAO {
	public boolean addSongs(Songs p);
	 public ArrayList<Songs> listSongs();
	 public boolean deleteSongs(Songs f);
}

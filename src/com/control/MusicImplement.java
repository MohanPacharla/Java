package com.control;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AlbumImplementation;
import com.dao.AlbumsDAO;
import com.dao.MusicDAO;
import com.dao.MusicImplementation;
import com.model.Albums;
import com.model.Music;


public class MusicImplement implements MainInterface{

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		int music_id = Integer.parseInt(request.getParameter("music_id"));
		int album_id = Integer.parseInt(request.getParameter("album_id"));
		int title_id = Integer.parseInt(request.getParameter("title_id"));
		int artist_id = Integer.parseInt(request.getParameter("artist_id"));
		int genre_id = Integer.parseInt(request.getParameter("genre_id"));
		int song_id = Integer.parseInt(request.getParameter("song_id"));
		MusicDAO obj = new MusicImplementation();
		Music p = new Music();
		p.setMusic_id(music_id);
		p.setAlbum_id(album_id);
		p.setTitle_id(title_id);
		p.setArtist_id(artist_id);
		p.setGenre_id(genre_id);
		p.setSong_id(song_id);
		if (obj.addMusic(p)) {
			pw.println("Record  inserted Successfully");
			
		} else {
			pw.println("Record not inserted");
		}
	}

	public void execute1(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		PrintWriter pw = response.getWriter();
		int music_id = Integer.parseInt(request.getParameter("hai"));
		MusicDAO obj = new MusicImplementation();
		Music d = new Music();
		d.setMusic_id(music_id);
		
		if(obj.deleteMusic(d)) {
			pw.println("Record deleted Successfully");
		}
		else{
			pw.println("Record  not deleted ");
		}
	}
}

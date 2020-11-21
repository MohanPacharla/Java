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
import com.model.Albums;

public class AlbumImplement implements MainInterface {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		int albumid = Integer.parseInt(request.getParameter("album_id"));
		String albumname = request.getParameter("album_name");
		int year = Integer.parseInt(request.getParameter("year"));
		String language = request.getParameter("language");
		
		AlbumsDAO obj = new AlbumImplementation();
		Albums p = new Albums();
		p.setAlbum_id(albumid);
		p.setAlbum_name(albumname);
		p.setYear(year);
		p.setLanguage(language);
		if (obj.addAlbums(p)) {
			pw.println("Record inserted Successfully");
			
			
		} else {
			pw.println("Record not Inserted");
			
		}
	}
	public void execute1(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		PrintWriter pw = response.getWriter();
		int albumid = Integer.parseInt(request.getParameter("hai"));
		AlbumsDAO obj = new AlbumImplementation();
		Albums d = new Albums();
		d.setAlbum_id(albumid);
		
		if(obj.deleteAlbums(d)) {
			pw.println("Record deleted Successfully");
			
		}
		else{
			pw.println("Record  not deleted Successfully");
		}
	}
}

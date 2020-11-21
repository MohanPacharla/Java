package com.control;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ArtistImplementation;
import com.dao.ArtistsDAO;
import com.model.Artists;

public class ArtistImplement implements MainInterface{
	public void execute(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		PrintWriter pw = response.getWriter();
		int artistid = Integer.parseInt(request.getParameter("artist_id"));
		String artistname = request.getParameter("artist_name");
		String profession = request.getParameter("profession");
		ArtistsDAO obj = new ArtistImplementation();
		Artists p = new Artists();
		p.setArtist_id(artistid);
		p.setArtist_name(artistname);
		p.setProfession(profession);
		if(obj.addArtists(p)) {
			pw.println("Record  inserted Successfully");
		}
		else {
			pw.println("Record  not inserted Successfully");
		}
	}
	
	public void execute1(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		PrintWriter pw = response.getWriter();
		int artistid = Integer.parseInt(request.getParameter("hai"));
		ArtistsDAO obj = new ArtistImplementation();
		Artists d = new Artists();
		d.setArtist_id(artistid);
		if(obj.deleteArtists(d)) {
			pw.println("Record  deleted Successfully");
		}
		else{
			pw.println("Record  not Deleted");
		}
	}
}

package com.control;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SongDAO;
import com.dao.SongImplementation;
import com.model.Songs;



public class SongImplement implements MainInterface{
	public void execute(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		PrintWriter pw = response.getWriter();
		int songid = Integer.parseInt(request.getParameter("songid"));
		String songname = request.getParameter("songname");
		String songlyrics = request.getParameter("songlyrics");
		SongDAO obj = new SongImplementation();
		Songs s = new Songs();
		s.setSong_id(songid);
		s.setSongname(songname);
		s.setSonglyrics(songlyrics);
		
		if(obj.addSongs(s)) {
			pw.println("Record  inserted Successfully");
		}
		else {
			pw.println("Record not  inserted ");
		}
	}
	public void execute1(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		PrintWriter pw = response.getWriter();
		int songid = Integer.parseInt(request.getParameter("hai"));
		SongDAO obj = new SongImplementation();
		Songs d = new Songs();
		d.setSong_id(songid);
		if(obj.deleteSongs(d)) {
			pw.println("Record deleted Successfully");
		}
		else{
			pw.println("Record  not deleted");
		}
	}
}

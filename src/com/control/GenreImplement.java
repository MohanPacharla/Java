package com.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.GenreImplementation;
import com.dao.GenresDAO;
import com.model.Genres;


public class GenreImplement  implements MainInterface {
	public void execute(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		PrintWriter pw = response.getWriter();
		int genreid = Integer.parseInt(request.getParameter("genreid"));
		String genrename = request.getParameter("genrename");
		GenresDAO obj = new GenreImplementation();
		Genres p = new Genres();
		p.setGenre_id(genreid);
		p.setGenre_name(genrename);
		if(obj.addGenres(p)) {
			pw.println("Record  inserted Successfully");
		}
		else{
			pw.println("Record   not inserted Successfully");
		}
	}
	public void execute1(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		PrintWriter pw = response.getWriter();
		int genreid = Integer.parseInt(request.getParameter("hai"));
		GenresDAO obj = new GenreImplementation();
		Genres d = new Genres();
		d.setGenre_id(genreid);
		if(obj.deleteGenres(d)) {
			pw.println("Record  deleted Successfully");
		}
		else{
			pw.println("Record  not deleted");
		}
	}
}

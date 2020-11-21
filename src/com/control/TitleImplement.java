package com.control;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.dao.TitleImplementation;
import com.dao.TitlesDAO;
import com.model.Titles;



public class TitleImplement implements MainInterface{
	public void execute(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		PrintWriter pw = response.getWriter();
		int title_id = Integer.parseInt(request.getParameter("title_id"));
		String title_name = request.getParameter("title_name");
		TitlesDAO obj = new TitleImplementation();
		Titles p = new Titles();
		p.setTitle_id(title_id);
		p.setTitle_name(title_name);
		if(obj.addTitles(p)) {
			pw.println("Record  inserted Successfully");
		}
		else {
			pw.println("Record   not inserted ");
		}
	}
	
	public void execute1(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		PrintWriter pw = response.getWriter();
		int title_id = Integer.parseInt(request.getParameter("hai"));
		TitlesDAO obj = new TitleImplementation();
		Titles d = new Titles();
		d.setTitle_id(title_id);
		if(obj.deleteTitles(d)) {
			pw.println("Record  deleted Successfully");
		}
		else{
			pw.println("Record  not deleted");
		}
	}
}

package com.control;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ControlServlet
 */
@WebServlet("/ControlServlet")
public class ControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	HashMap<String, MainInterface> map;

	public ControlServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		map = new HashMap<String, MainInterface>();
		map.put("Add1", new AlbumImplement());
		map.put("Add2", new ArtistImplement());
		map.put("Add3", new TitleImplement());
		map.put("Add4", new GenreImplement());
		map.put("Add5", new SongImplement());
		map.put("Add8", new GenreImplement());
		map.put("Add9", new SongImplement());
		map.put("Add10", new TitleImplement());
		map.put("Add11", new ArtistImplement());
		map.put("Add12", new AlbumImplement());
		
		map.put("Add15", new MusicImplement());
		map.put("Add16", new MusicImplement());
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();

		String name1 = request.getParameter("action1");
		String name2 = request.getParameter("action2");
		String name3 = request.getParameter("action3");
		String name4 = request.getParameter("action4");
		String name5 = request.getParameter("action5");
		
		String name8 = request.getParameter("action8");
		String name9 = request.getParameter("action9");
		String name10 = request.getParameter("action10");
		String name11 = request.getParameter("action11");
		String name12 = request.getParameter("action12");
	
		String name15 = request.getParameter("action15");
		String name16 = request.getParameter("action16");
		
		
		if (name1 != null) {
			MainInterface obj1 = map.get(name1);
			obj1.execute(request, response);
		} else if (name2 != null) {
			MainInterface obj2 = map.get(name2);
			obj2.execute(request, response);
		} else if (name3 != null) {
			MainInterface obj3 = map.get(name3);
			obj3.execute(request, response);
		} else if (name4 != null) {
			MainInterface obj4 = map.get(name4);
			obj4.execute(request, response);
		} else if (name5 != null) {
			MainInterface obj5 = map.get(name5);
			obj5.execute(request, response);
		
		} else if (name8 != null) {
			MainInterface obj8 = map.get(name8);
			obj8.execute1(request, response);
		} else if (name9 != null) {
			MainInterface obj9 = map.get(name9);
			obj9.execute1(request, response);
		} else if (name10 != null) {
			MainInterface obj10 = map.get(name10);
			obj10.execute1(request, response);
		} else if (name11 != null) {
			MainInterface obj11 = map.get(name11);
			obj11.execute1(request, response);
		} else if (name12 != null) {
			MainInterface obj12 = map.get(name12);
			obj12.execute1(request, response);
		
		} else if (name15 != null) {
			MainInterface obj15 = map.get(name15);
			obj15.execute(request, response);
		} else if (name16 != null) {
			MainInterface obj16 = map.get(name16);
			obj16.execute1(request, response);
		}
	}
}
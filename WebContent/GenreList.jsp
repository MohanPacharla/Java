<%@page import="java.sql.*,java.util.*,com.dao.ConnectionFactory,com.model.*"%>

<%
Connection con=ConnectionFactory.getConnection();
try {
	ArrayList<Genres> list=new ArrayList<>();
	Statement ps = con.createStatement();
	ResultSet res = ps.executeQuery("select * from Genres");
	while(res.next()){
		Genres emp = new Genres(res.getInt(1),res.getString(2));
		list.add(emp);
	}
		request.setAttribute("list4", list);
		RequestDispatcher rd = request.getRequestDispatcher("/AlbumApplication.jsp");
		rd.forward(request, response);
}
catch(Exception e) {
	System.out.println(e);
}	
%>
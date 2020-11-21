<%@page import="java.sql.*,java.util.*,com.dao.ConnectionFactory,com.model.*"%>

<%
Connection con=ConnectionFactory.getConnection();
try {
	ArrayList<Titles> list1=new ArrayList<>();
	Statement ps = con.createStatement();
	ResultSet res = ps.executeQuery("select * from Titles");
	while(res.next()){
		Titles emp = new Titles(res.getInt(1),res.getString(2));
		list1.add(emp);
	}
		request.setAttribute("list1", list1);
		RequestDispatcher rd = request.getRequestDispatcher("/AlbumApplication.jsp");
		rd.forward(request, response);
}
catch(Exception e) {
	System.out.println(e);
}	
%>
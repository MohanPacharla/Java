<%@page import="java.sql.*,java.util.*,com.dao.ConnectionFactory,com.model.*"%>

<%
Connection con=ConnectionFactory.getConnection();
try {
	ArrayList<Artists> list=new ArrayList<>();
	Statement ps = con.createStatement();
	ResultSet res = ps.executeQuery("select * from Artists");
	while(res.next()){
		Artists emp = new Artists(res.getInt(1),res.getString(2),res.getString(3));
		list.add(emp);
	}
		request.setAttribute("list2", list);
		RequestDispatcher rd = request.getRequestDispatcher("/AlbumApplication.jsp");
		rd.forward(request, response);
}
catch(Exception e) {
	System.out.println(e);
}	
%>
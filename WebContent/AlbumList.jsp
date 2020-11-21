<%@page import="java.sql.*,java.util.*,com.dao.ConnectionFactory,com.model.*"%>
<
<%
Connection con=ConnectionFactory.getConnection();
try {
	ArrayList<Albums> list=new ArrayList<>();
	Statement ps = con.createStatement();
	ResultSet res = ps.executeQuery("select * from Albums");
	while(res.next()){
		Albums emp = new Albums(res.getInt(1),res.getString(2),res.getInt(3),res.getString(4));
		list.add(emp);
	}
		request.setAttribute("list5", list);
		RequestDispatcher rd = request.getRequestDispatcher("/AlbumApplication.jsp");
		rd.forward(request, response);
}
catch(Exception e) {
	System.out.println(e);
}	
%>

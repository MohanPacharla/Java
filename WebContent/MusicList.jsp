<%@page import="java.sql.*,java.util.*,com.dao.ConnectionFactory"%>

<%
Connection con2=ConnectionFactory.getConnection();
try {
	ArrayList list=new ArrayList();
	Statement ps2 = con2.createStatement();
	ResultSet res2 = ps2.executeQuery("select * from titles");
	while(res2.next()){
		list.add(res2.getString(1));
		list.add(res2.getString(2));
	}
		request.setAttribute("list6", list);
		RequestDispatcher rd = request.getRequestDispatcher("/AlbumApplication.jsp");
		rd.forward(request, response);
}
catch(Exception e) {
	System.out.println(e);
}	
%>
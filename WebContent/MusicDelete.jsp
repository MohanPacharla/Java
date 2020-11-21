<%@page import="java.sql.*,com.dao.ConnectionFactory"%>
    	<% 
if(session.getAttribute("user_name") != null){
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
text-align: center;
	background:url(title.jpg) no-repeat;
	background-size:cover;
}
h1 , h2 {
color:white;
}
</style>
</head>
<body>
<form action="ControlServlet" method="post">
<h2>Welcome <%=session.getAttribute("user_name")%></h2>
	<h1>Select Music ID</h1>
		
		<input type="hidden" name="action16" value="Add16">
		<select name="hai" onchange="this.form.submit();">
		<option>Select Music ID</option>
						<% 
			Connection con=ConnectionFactory.getConnection();
			try {
				Statement ps = con.createStatement();
				ResultSet res = ps.executeQuery("select Music_id from Music");
				while (res.next()) {
					%>
						<option><%= res.getInt("Music_id") %></option>
						<%
				}		
			}
			catch(Exception e) {
				System.out.println(e);
			}	
			
			 %>
				</select><br><br>
				<a href="AdminAdminAlbumApplication.jsp">BACK</a>	
	</form>
</body>
</html>
<%
if(request.getAttribute("m3") != null) {
	out.println("<h2 style=color:white>Sucessfully Deleted<h2>");
}
else if(request.getAttribute("m4") != null){
	out.println("<h2 style=color:red>Sorry record is not deleted<h2><br>"+request.getAttribute("m4"));
	
}
%>
<%
}
else {
	response.sendRedirect("./HomePage.jsp");
}
%>
<%@page import="java.sql.*,com.dao.ConnectionFactory"%>
    
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
<form action="ControlServlet">
<h2>Welcome <%=session.getAttribute("user_name")%></h2>
	<h1>Select song ID</h1>
		
		<input type="hidden" name="action9" value="Add9">
		<select name="hai" onchange="this.form.submit();">
		<option>Select Song ID</option>
						<% 
			Connection con=ConnectionFactory.getConnection();
			try {
				Statement ps = con.createStatement();
				ResultSet res = ps.executeQuery("select Song_id from Songs");
				while (res.next()) {
					%>
						<option><%= res.getInt("Song_id") %></option>
						<%
				}		
			}
			catch(Exception e) {
				System.out.println(e);
			}	
			
			 %>
				</select><br><br>
				<a href="AdminAlbumApplication.jsp">BACK</a>	
	</form>
</body>
</html>

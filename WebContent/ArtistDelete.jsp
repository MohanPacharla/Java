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
<form action="ControlServlet" method="post">
<h2>Welcome <%=session.getAttribute("user_name")%></h2>
	<h1>Select Artist ID</h1>
		
		<input type="hidden" name="action11" value="Add11">
		<select name="hai" onchange="this.form.submit();">
		<option>Select Artist ID</option>
						<% 
			Connection con=ConnectionFactory.getConnection();
			try {
				Statement ps = con.createStatement();
				ResultSet res = ps.executeQuery("select Artist_id from Artists");
				while (res.next()) {
					%>
						<option><%= res.getInt("Artist_id") %></option>
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

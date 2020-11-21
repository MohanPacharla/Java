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
	<h1>Select Album ID</h1>
		
		<input type="hidden" name="action12" value="Add12">
		<select name="hai" onchange="this.form.submit();">
		<option>Select Album ID</option>
						<% 
			Connection con=ConnectionFactory.getConnection();
			try {
				Statement ps = con.createStatement();
				ResultSet res = ps.executeQuery("select Album_id from Albums");
				while (res.next()) {
					%>
						<option><%= res.getInt("Album_id") %></option>
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

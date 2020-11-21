<%@page import="java.sql.*,java.util.*,com.dao.ConnectionFactory,com.model.*"%>

<html>
<head>
<title>Album</title>
<link rel="stylesheet" type="text/css" href="menubar.css">
</head>
<body>
	<form action="AlbumApplication.jsp" method="post">
		<div class="navbar">
		
		
	<h1><span>A</span>lbu<span>m A</span>ppl<span>ica</span>tion</h1>
			<ul>
			<li><a href="#">Music</a> <select name="music" onchange=this.form.submit();>
			<option>select ID</option>
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
				</select></li>
				<li><a href="#">Album</a> <select name="album" onchange=this.form.submit();>
				<option>select ID</option>
						<% 
			Connection con5=ConnectionFactory.getConnection();
			try {
				Statement ps5 = con5.createStatement();
				ResultSet res5 = ps5.executeQuery("select album_id from albums");
				while (res5.next()) {
					%>
						<option><%= res5.getInt("Album_id") %></option>
						<%
				}		
			}
			catch(Exception e) {
				System.out.println(e);
			}	
			
			 %>
				</select></li>
				<li><a href="#">Title</a> <select name="title" onchange=this.form.submit();>
				<option>select ID</option>
						<% 
			Connection con1=ConnectionFactory.getConnection();
			try {
				Statement ps1 = con1.createStatement();
				ResultSet res1 = ps1.executeQuery("select title_id from titles");
				while (res1.next()) {
					%>
						<option><%= res1.getInt("title_id") %></option>
						<%
				}		
			}
			catch(Exception e) {
				System.out.println(e);
			}	
			
			 %>
				</select></li>
				<li><a href="#">Artist</a> <select name="artist" onchange=this.form.submit();>
				<option>select ID</option>
						<% 
			Connection con2=ConnectionFactory.getConnection();
			try {
				Statement ps2 = con2.createStatement();
				ResultSet res2 = ps2.executeQuery("select artist_id from artists");
				while (res2.next()) {
					%>
						<option><%= res2.getInt("artist_id") %></option>
						<%
				}		
			}
			catch(Exception e) {
				System.out.println(e);
			}	
			
			 %>
				</select></li>
				<li><a href="#">Genre</a> <select name="genre" onchange=this.form.submit();>
				<option>select ID</option>
						<% 
			Connection con3=ConnectionFactory.getConnection();
			try {
				Statement ps3 = con3.createStatement();
				ResultSet res3 = ps3.executeQuery("select genre_id from genres");
				while (res3.next()) {
					%>
						<option><%= res3.getInt("genre_id") %></option>
						<%
				}		
			}
			catch(Exception e) {
				System.out.println(e);
			}	
			
			 %>
				</select></li>
				<li><a href="#">Song</a> <select name="song" onchange=this.form.submit();>
				<option>select ID</option>
						<% 
			Connection con4=ConnectionFactory.getConnection();
			try {
				Statement ps4 = con4.createStatement();
				ResultSet res4 = ps4.executeQuery("select song_id from songs");
				while (res4.next()) {
					%>
						<option><%= res4.getInt("song_id") %></option>
						<%
				}		
			}
			catch(Exception e) {
				System.out.println(e);
			}			
			 %>
				</select></li>
				<li><a href="#">Insert</a>
					<ul>						
						<li><a href="Artist.jsp">Artist Insert</a></li>
						<li><a href="Genre.jsp">Genre Insert</a></li>
						<li><a href="Album.jsp">Album Insert</a></li>
						<li><a href="Song.jsp">Song Insert</a></li>
						<li><a href="Title.jsp">Title Insert</a></li>
						<li><a href="Music.jsp">Music Insert</a></li>
					</ul></li>
					<li><a href="#">Delete</a>
					<ul>						
						<li><a href="ArtistDelete.jsp">Artist Delete</a></li>
						<li><a href="GenreDelete.jsp">Genre Delete</a></li>
						<li><a href="AlbumDelete.jsp">Album Delete</a></li>
						<li><a href="SongDelete.jsp">Song Delete</a></li>
						<li><a href="TitleDelete.jsp">Title Delete</a></li>
						<li><a href="MusicDelete.jsp">Music Delete</a></li>
					</ul></li>
					<li><a href="#">List</a>
					<ul>						
						<li><a href="ArtistList.jsp">ArtistList</a></li>
						<li><a href="GenreList.jsp">GenreList</a></li>
						<li><a href="AlbumList.jsp">AlbumList</a></li>
						<li><a href="SongList.jsp">SongList</a></li>
						<li><a href="TitleList.jsp">TitleList</a></li>
						<li><a href="MusicList.jsp">MusicList</a></li>
					</ul></li>
				<li><a href="UserLogout.jsp">Logout</a></li>
			</ul>
			<%
if(request.getParameter("music") != null) {
	try {
		Statement ps = con.createStatement();
		ResultSet res = ps.executeQuery("select music_id,a.album_name,t.title_name,s.song_name,ar.artist_name,ar.profession,g.genre_name,a.year,a.language from music m,album a,artists ar,titles t,songs s,genres g where a.album_id=m.album_id and t.title_id=m.title_id and ar.artist_id=m.artist_id and g.genre_id=m.genre_id and m.music_id="+request.getParameter("music")+" limit 1");
		%><table border="1" align="center" cellpadding=5px>
		<tr>
			<th>Music_Id</th>
			<th>Album_Name</th>
			<th>Title_Name</th>
			<th>Song_Name</th>
			<th>Artist_Name</th>
			<th>Profession</th>
			<th>Genre_Name</th>
			<th>Year</th>
			<th>Language</th>
		</tr><%
		while (res.next()) {
			%>	
  		<tr>
		<td><%=res.getString("music_id") %></td>
		<td><%= res.getString("album_name")%></td>
		<td><%= res.getString("title_name")%></td>
		<td><%= res.getString("song_name")%></td>
		<td><%= res.getString("artist_name")%></td>
		<td><%= res.getString("profession")%></td>
		<td><%= res.getString("genre_name")%></td>
		<td><%= res.getString("year")%></td>
		<td><%= res.getString("language")%></td>
		</tr>
				<%
		}
		%></table><%
	}
	catch(Exception e) {
		System.out.println(e);
	}	
}
%>
<%
if(request.getParameter("title") != null) {
	try {
		Statement ps1 = con1.createStatement();
		ResultSet res1 = ps1.executeQuery("select * from titles where title_id="+request.getParameter("title"));
		%><table border="1" align="center" cellpadding=5px>
		<tr>
			<th>Title_Id</th>
			<th>Title_Name</th>
		</tr><%
		while (res1.next()) {
			%>	
  		<tr>
		<td><%=res1.getString("title_id") %></td>
		<td><%= res1.getString("title_name")%></td>
		</tr>
				<%
		}
		%></table><%
	}
	catch(Exception e) {
		System.out.println(e);
	}	
}
%>
<%
if(request.getParameter("artist") != null) {
	try {
		Statement ps2 = con2.createStatement();
		ResultSet res2 = ps2.executeQuery("select * from artists where artist_id="+request.getParameter("artist"));
		%><table border="1" align="center" cellpadding=5px>
		<tr>
			<th>Artist_Id</th>
			<th>Artist_Name</th>
			<th>Profession</th>
		</tr><%
		while (res2.next()) {
			%>	
  		<tr>
		<td><%=res2.getString("artist_id") %></td>
		<td><%= res2.getString("artist_name")%></td>
		<td><%= res2.getString("profession")%></td>
		</tr>
				<%
		}
		%></table><%
	}
	catch(Exception e) {
		System.out.println(e);
	}	
}
%>
<%
if(request.getParameter("genre") != null) {
	try {
		Statement ps3 = con3.createStatement();
		ResultSet res3 = ps3.executeQuery("select * from genres where genre_id="+request.getParameter("genre"));
		%><table border="1" align="center" cellpadding=5px>
		<tr>
			<th>Genre_Id</th>
			<th>Genre_Name</th>
		</tr><%
		while (res3.next()) {
			%>	
  		<tr>
		<td><%=res3.getString("genre_id") %></td>
		<td><%= res3.getString("genre_name")%></td>
		</tr>
				<%
		}
		%></table><%
	}
	catch(Exception e) {
		System.out.println(e);
	}	
}
%>

<%
if(request.getParameter("album") != null) {
	try {
		Statement ps5 = con5.createStatement();
		ResultSet res5 = ps5.executeQuery("select * from albums where album_id="+request.getParameter("album")+" limit 1");
		%><table border="1" align="center" cellpadding=5px>
		<tr>
			<th>Album_Id</th>
			<th>Album_Name</th>
			<th>Year</th>
			<th>Language</th>
		</tr><%
		while (res5.next()) {
			%>	
  		<tr>
		<td><%=res5.getString("album_id") %></td>
		<td><%= res5.getString("album_name")%></td>
		<td><%= res5.getString("year")%></td>
		<td><%= res5.getString("language")%></td>
		</tr>
				<%
		}
		%></table><%
	}
	catch(Exception e) {
		System.out.println(e);
	}	
}
%>
<%
if(request.getAttribute("list1") != null) {
		
		%><table border="1" align="center" cellpadding=5px>
		<tr>
			<th>Title_Id</th>
			<th>Title_Name</th>
		</tr><%
		ArrayList<Titles> haiar = new ArrayList<>();
		haiar=(ArrayList<Titles>)request.getAttribute("list1");
		for(Titles a:haiar) {
			%>	
  		<tr>
		<td><%=a.getTitle_id() %></td>
		<td><%=a.getTitle_name() %></td>
		</tr>
				<%
		}
		%></table><%	
}
%>
<%
if(request.getAttribute("list2") != null) {
		
		%><table border="1" align="center" cellpadding=5px>
		<tr>
			<th>Artist_Id</th>
			<th>Artist_Name</th>
			<th>Artist_Profession</th>
		</tr><%
		ArrayList<Artists> hai = new ArrayList<>();
		hai=(ArrayList<Artists>)request.getAttribute("list2");
		for(Artists a:hai) {
			%>	
  		<tr>
		<td><%=a.getArtist_id() %></td>
		<td><%=a.getArtist_name() %></td>
		<td><%=a.getProfession() %></td>
		</tr>
				<%
		}
		%></table><%	
}
%>
<%
if(request.getAttribute("list3") != null) {
	Connection con8=ConnectionFactory.getConnection();
	try {
		Statement ps8 = con8.createStatement();
		ResultSet res8 = ps8.executeQuery("select * from songs");
		%><table border="1" align="center" cellpadding=5px>
		<tr>
			<th>Song_Id</th>
			<th>Song_Name</th>
		</tr><%
		while (res8.next()) {
			%>	
  		<tr>
		<td><%=res8.getString("Song_Id") %></td>
		<td><%= res8.getString("Song_Name")%></td>
		</tr>
				<%
		}
		%></table><%
	}
	catch(Exception e) {
		System.out.println(e);
	}	
}
%>
<%
if(request.getAttribute("list4") != null) {
		
		%><table border="1" align="center" cellpadding=5px>
		<tr>
			<th>Genre_Id</th>
			<th>Genre_Name</th>
		</tr><%
		ArrayList<Genres> hai = new ArrayList<>();
		hai=(ArrayList<Genres>)request.getAttribute("list4");
		for(Genres a:hai) {
			%>	
  		<tr>
		<td><%=a.getGenre_id() %></td>
		<td><%=a.getGenre_name() %></td>
		</tr>
				<%
		}
		%></table><%	
}
%>
<%
if(request.getAttribute("list5") != null) {
		
		%><table border="1" align="center" cellpadding=5px>
		<tr>
			<th>Album_Id</th>
			<th>Album_Name</th>
			<th>Album_Year</th>
			<th>Album_Language</th>
		</tr><%
		ArrayList<Albums> hai = new ArrayList<>();
		hai=(ArrayList<Albums>)request.getAttribute("list5");
		for(Albums a:hai) {
			%>	
  		<tr>
		<td><%=a.getAlbum_id() %></td>
		<td><%=a.getAlbum_name() %></td>
		<td><%=a.getYear() %></td>
		<td><%=a.getLanguage() %></td>
		</tr>
				<%
		}
		%></table><%	
}
%>
<%
if(request.getAttribute("list6") != null) {
	Connection con11=ConnectionFactory.getConnection();
	try {
		Statement ps11 = con11.createStatement();
		ResultSet res11 = ps11.executeQuery("select m.music_id,a.album_name,t.title_name,s.song_name,ar.artist_name,ar.profession,g.genre_name,a.year,a.language from music m,album a,artists ar,songs s,titles t,genres g where m.album_id=a.album_id and m.title_id=t.title_id and m.artist_id=ar.artist_id and m.genre_id=g.genre_id and m.song_id=s.song_id");
		%><table border="1" align="center" cellpadding=5px>
		<tr>
			<th>Music_Id</th>
			<th>Album_Name</th>
			<th>Title_Name</th>
			<th>Song_Name</th>
			<th>Artist_Name</th>
			<th>Profession</th>
			<th>Genre_Name</th>
			<th>Year</th>
			<th>Language</th>
		</tr><%
		while (res11.next()) {
			%>	
  		<tr>
		<td><%=res11.getString("music_id") %></td>
		<td><%= res11.getString("album_name")%></td>
		<td><%= res11.getString("title_name")%></td>
		<td><%= res11.getString("song_name")%></td>
		<td><%= res11.getString("artist_name")%></td>
		<td><%= res11.getString("profession")%></td>
		<td><%= res11.getString("genre_name")%></td>
		<td><%= res11.getString("year")%></td>
		<td><%= res11.getString("language")%></td>
		</tr>
				<%
		}
		%></table><%
	}
	catch(Exception e) {
		System.out.println(e);
	}	
}
%>
	</div>
	</form>
</body>
</html>
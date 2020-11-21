<%@page import="java.sql.*,java.util.*,com.dao.ConnectionFactory"%>

<html>
<head>
<title>Album</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="menubar.css">
</head>
<body>
	<form action="AdminAlbumApplication.jsp" method="post">
		<div class="navbar">
	

			
			<%
				if (request.getAttribute("list1") != null) {
				Connection con6 = ConnectionFactory.getConnection();
				try {
					Statement ps6 = con6.createStatement();
					ResultSet res6 = ps6.executeQuery("select * from titles");
			%><table border="1" align="center" cellpadding=5px>
				<tr>
					<th>Title_Id</th>
					<th>Title_Name</th>
				</tr>
				<%
					while (res6.next()) {
				%>
				<tr>
					<td><%=res6.getString("title_id")%></td>
					<td><%=res6.getString("title_name")%></td>
				</tr>
				<%
					}
				%>
			</table>
			<%
				} catch (Exception e) {
				System.out.println(e);
			}
			}
			%>
			<%
				if (request.getAttribute("list2") != null) {
				Connection con7 = ConnectionFactory.getConnection();
				try {
					Statement ps7 = con7.createStatement();
					ResultSet res7 = ps7.executeQuery("select * from artists");
			%><table border="1" align="center" cellpadding=5px>
				<tr>
					<th>Artist_Id</th>
					<th>Artist_Name</th>
					<th>Artist_Profession</th>
				</tr>
				<%
					while (res7.next()) {
				%>
				<tr>
					<td><%=res7.getString("Artist_Id")%></td>
					<td><%=res7.getString("Artist_Name")%></td>
					<td><%=res7.getString("Profession")%></td>
				</tr>
				<%
					}
				%>
			</table>
			<%
				} catch (Exception e) {
				System.out.println(e);
			}
			}
			%>
			<%
				if (request.getAttribute("list3") != null) {
				Connection con8 = ConnectionFactory.getConnection();
				try {
					Statement ps8 = con8.createStatement();
					ResultSet res8 = ps8.executeQuery("select * from songs");
			%><table border="1" align="center" cellpadding=5px>
				<tr>
					<th>Song_Id</th>
					<th>Song_Name</th>
				</tr>
				<%
					while (res8.next()) {
				%>
				<tr>
					<td><%=res8.getString("Song_Id")%></td>
					<td><%=res8.getString("Song_Name")%></td>
				</tr>
				<%
					}
				%>
			</table>
			<%
				} catch (Exception e) {
				System.out.println(e);
			}
			}
			%>
			<%
				if (request.getAttribute("list4") != null) {
				Connection con9 = ConnectionFactory.getConnection();
				try {
					Statement ps9 = con9.createStatement();
					ResultSet res9 = ps9.executeQuery("select * from genres");
			%><table border="1" align="center" cellpadding=5px>
				<tr>
					<th>Genre_Id</th>
					<th>Genre_Name</th>
				</tr>
				<%
					while (res9.next()) {
				%>
				<tr>
					<td><%=res9.getString("Genre_Id")%></td>
					<td><%=res9.getString("Genre_Name")%></td>
				</tr>
				<%
					}
				%>
			</table>
			<%
				} catch (Exception e) {
				System.out.println(e);
			}
			}
			%>
			<%
				if (request.getAttribute("list5") != null) {
				Connection con10 = ConnectionFactory.getConnection();
				try {
					Statement ps10 = con10.createStatement();
					ResultSet res10 = ps10.executeQuery("select * from albums");
			%><table border="1" align="center" cellpadding=5px>
				<tr>
					<th>Album_Id</th>
					<th>Album_Name</th>
					<th>Album_Year</th>
					<th>Album_Language</th>
				</tr>
				<%
					while (res10.next()) {
				%>
				<tr>
					<td><%=res10.getString("Album_Id")%></td>
					<td><%=res10.getString("Album_Name")%></td>
					<td><%=res10.getString("Year")%></td>
					<td><%=res10.getString("Language")%></td>
				</tr>
				<%
					}
				%>
			</table>
			<%
				} catch (Exception e) {
				System.out.println(e);
			}
			}
			%>
			<%
				if (request.getAttribute("list6") != null) {
				Connection con11 = ConnectionFactory.getConnection();
				try {
					Statement ps11 = con11.createStatement();
					ResultSet res11 = ps11.executeQuery(
					"select m.music_id,a.album_name,t.title_name,s.song_name,ar.artist_name,ar.profession,g.genre_name,a.year,a.language from music m,album a,artists ar,songs s,titles t,genres g where m.album_id=a.album_id and m.title_id=t.title_id and m.artist_id=ar.artist_id and m.genre_id=g.genre_id and m.song_id=s.song_id");
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
				</tr>
				<%
					while (res11.next()) {
				%>
				<tr>
					<td><%=res11.getString("music_id")%></td>
					<td><%=res11.getString("album_name")%></td>
					<td><%=res11.getString("title_name")%></td>
					<td><%=res11.getString("song_name")%></td>
					<td><%= res11.getString("artist_name")%></td>
					<td><%= res11.getString("profession")%></td>
					<td><%= res11.getString("genre_name")%></td>
					<td><%= res11.getString("year")%></td>
					<td><%= res11.getString("language")%></td>
				</tr>
				<%
		}
		%>
			</table>
			<%
	}
	catch(Exception e) {
		System.out.println(e);
	}	
}
%>
 
<div class="container">
  <div class="jumbotron">
    <h1>Welcome To Admin Page</h1>      
    <img src="p1.jpg" class="rounded" alt="Cinque Terre" width="100%" height="100%"> 
  </div>
       
</div><div class="container">
  
  <div class="btn-group">
    <button type="button" class="btn btn-primary">Albums</button>
    <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="Album.jsp">Album Insert</a>
      <a class="dropdown-item" href="AlbumDelete.jsp">Album Delete</a>
       <a class="dropdown-item" href="AlbumList">Album List</a>
    </div>
  </div>
  
  <div class="btn-group">
    <button type="button" class="btn btn-secondary">Artists</button>
    <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="Artist.jsp">Artist Insert</a>
      <a class="dropdown-item" href="ArtistDelete">Artist Delete</a>
       <a class="dropdown-item" href="ArtistList">Artist List</a>
    </div>
  </div>

  <div class="btn-group">
    <button type="button" class="btn btn-success">Songs</button>
    <button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="Song.jsp">Song Insert</a>
      <a class="dropdown-item" href="SongDelete.jsp">Song Delete</a>
       <a class="dropdown-item" href="SongList">Song List</a>
    </div>
  </div>

  <div class="btn-group">
    <button type="button" class="btn btn-info">Titles</button>
    <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="Title.jsp">Title Insert</a>
      <a class="dropdown-item" href="TitleDelete.jsp">Title Delete</a>
       <a class="dropdown-item" href="TitleList.jsp">Title List</a>
    </div>
  </div>

  <div class="btn-group">
    <button type="button" class="btn btn-warning">Genres</button>
    <button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="Genre.jsp">Genre Insert</a>
      <a class="dropdown-item" href="GenreDelete">Genre Delete</a>
       <a class="dropdown-item" href="GenreList">Genre List</a>
    </div>
  </div>

  <div class="btn-group">
    <button type="button" class="btn btn-danger">Music</button>
    <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="Music.jsp">Music Insert</a>
      <a class="dropdown-item" href="MusicDelete.jsp">Music Delete</a>
       <a class="dropdown-item" href="MusicList">Music List</a>
    </div>
    	
			
  </div>
</div>
<ul>
				
						
				<li><a href="UserLogout.jsp">Logout</a></li>
			</ul>

		</div>
	</form>
</body>
</html>
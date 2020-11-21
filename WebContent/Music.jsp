<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<% 
if(session.getAttribute("user_name") != null){
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Music Insertion</title>
<style type="text/css">
body {
	text-align: center;
	background:url(insert.jpg) no-repeat;
	background-size:cover;
}

h1 {
	color: white;
}

.hai {
	padding: 8px;
	margin-top: 10px;
	border-radius: 20px;
	width: 20%;
	border: none;
	background: rgba(0, 0, 0, .5);
	color:white;
	border:none;
	border-bottom:2px solid white;
	border-top:2px solid white;
}
.hai:hover{
color:red;
}
input[type=submit] {
	margin-top: 20px;
	border-radius: 20px;
	width: 15%;
	padding: 10px;
	color: orange;
	border: none;
	background: rgba(0, 0, 0, 10);
}
input[type=submit]:hover{
background:orange;
}
input[type=submit]:hover {
	background: blue;
	color: white;
	border: none;
}
</style>
<script type="text/javascript">
function myfun(){
	var a1=document.getElementById("hai6").value;
	var a=document.getElementById("hai1").value;
	var b=document.getElementById("hai2").value;
	var c=document.getElementById("hai3").value;
	var d=document.getElementById("hai4").value;
	var e=document.getElementById("hai5").value;
	if(a1==""){
		document.getElementById("bye6").innerHTML="**please fill field";
		return false;
	}
	if(a==""){
		document.getElementById("bye1").innerHTML="**please fill field";
		return false;
	}
	if(b==""){
		document.getElementById("bye2").innerHTML="**please fill field";
		return false;
	}
	if(c==""){
		document.getElementById("bye3").innerHTML="**please fill field";
		return false;
	}
	if(d==""){
		document.getElementById("bye4").innerHTML="**please fill field";
		return false;
	}
	if(e==""){
		document.getElementById("bye5").innerHTML="**please fill field";
		return false;
	}
}
</script>
</head>
<body>
	<form action="ControlServlet" onsubmit="return myfun()">
	<h1>Welcome <%=session.getAttribute("user_name")%></h1>
		<h1>Music Insertion</h1>
		<input type="hidden" name="action15" value="Add15">
		<input type=text  name="music_id"   class="hai" id="hai6" value="" placeholder="musicid"><br>
		<span id="bye6" style=color:red></span><br>
		<input type=text  name="album_id"   class="hai" id="hai1" value="" placeholder="albumid"><br>
		<span id="bye1" style=color:red></span><br>
		<input type=text  name="title_id" class="hai" id="hai2" value="" placeholder="titleid"><br>
		<span id="bye2" style=color:red></span><br>
		<input type=text  name="artist_id" class="hai" id="hai3" value="" placeholder="artistid"><br>
		<span id="bye3" style=color:red></span><br>
		<input type=text  name="genre_id"   class="hai" id="hai4" value="" placeholder="genreid"><br>
		<span id="bye4" style=color:red></span><br>
		<input type=text  name="song_id"   class="hai" id="hai5" value="" placeholder="songid"><br>
		<span id="bye5" style=color:red></span><br>
		<input type=submit value="submit"><br><b></b><a href="AdminAlbumApplication.jsp">BACK</a>
	</form>
</body>
</html>
<%
if(request.getAttribute("m1") != null) {
	out.println("<h2 style=color:white>Sucessfully Inserted<h2>");
}
else if(request.getAttribute("m2") != null){
	out.println("<h2 style=color:red>Sorry not Inserted duplicate entry<h2>"+request.getAttribute("m2"));
	
}
%>
<%
}
else {
	response.sendRedirect("./HomePage.jsp");
}
%>
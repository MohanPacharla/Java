<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Album Insertion</title>
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
	var a=document.getElementById("hai1").value;
	var b=document.getElementById("hai2").value;
	var c=document.getElementById("hai3").value;
	var d=document.getElementById("hai4").value;
	
	if(a==""){
		document.getElementById("bye1").innerHTML="**please fill field";
		return false;
	}
	if(b==""){
		document.getElementById("bye2").innerHTML="**please fill field";
		return false;
	}
	if(b.length < 3){
		document.getElementById("bye2").innerHTML="**length must greater than 3";
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
	if(d.length < 3){
		document.getElementById("bye4").innerHTML="**length must greater than 3";
		return false;
	}
}
</script>
</head>
<body>
	<form action="ControlServlet" onsubmit="return myfun()">
	<h1>Welcome <%=session.getAttribute("user_name")%></h1>
		<h1>Album Insertion</h1>
		<input type="hidden" name="action1" value="Add1">
		<input type=text  name="album_id"   class="hai" id="hai1" value="" placeholder="albumid"><br>
		<span id="bye1" style=color:red></span><br>
		<input type=text  name="album_name" class="hai" id="hai2" value="" placeholder="albumname"><br>
		<span id="bye2" style=color:red></span><br>
		<input type=text  name="year"       class="hai" id="hai3" value="" placeholder="year"><br>
		<span id="bye3" style=color:red></span><br>
		<input type=text  name="language"   class="hai" id="hai4" value="" placeholder="language"><br>
		<span id="bye4" style=color:red></span><br>
		<input type=submit value="submit"> <a href="AdminAlbumApplication.jsp">BACK</a>
	</form>
</body>
</html>

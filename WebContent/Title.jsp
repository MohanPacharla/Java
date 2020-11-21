<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Title Insertion</title>
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
	function myfun() {
		var a = document.getElementById("hai1").value;
		var b = document.getElementById("hai2").value;

		if (a == "") {
			document.getElementById("bye1").innerHTML = "**please fill field";
			return false;
		}
		if (b == "") {
			document.getElementById("bye2").innerHTML = "**please fill field";
			return false;
		}
		if (b.length < 3) {
			document.getElementById("bye2").innerHTML = "**length must greater than 3";
			return false;
		}
	}
</script>
</head>
<body>
	<form action="ControlServlet" onsubmit="return myfun()">
		<h1>
			Welcome
			<%=session.getAttribute("user_name")%></h1>
		<h1>Title Insertion</h1>
		<input type="hidden" name="action3" value="Add3"> <input
			type=text name="title_id" class="hai" id="hai1" value=""
			placeholder="titleid"><br> <span id="bye1"
			style="color: red"></span><br> <input type=text
			name="title_name" class="hai" id="hai2" value=""
			placeholder="titlename"><br> <span id="bye2"
			style="color: red"></span><br> <input type=submit value="submit"><br><a href="AdminAlbumApplication.jsp">BACK</a>
	</form>
</body>
</html>

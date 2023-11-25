    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@page import="com.database.BlogDao"%>
      <%@page import="com.database.UserDao"%>

 <%@ page import="java.io.*"%>
 <%@ page import="java.sql.*"%>
 <%@ page import="com.mysql.*"%>
 <%@ page import="java.util.*"%>
  <%@ page import="java.text.*"%>
 <%@ page import="javax.servlet.*"%>
 <%@ page import="javax.servlet.http.*"%>
 <%@ page import="javax.servlet.http.HttpSession"%>
 <%@ page language="java"%>
 <%@ page session="true"%>
 <%@ page import="java.sql.*"%>
 
 
 <%
 	String email=(String)session.getAttribute("uname");
    String name =com.database.UserDao.displayname((String)session.getAttribute("uname"));
    String userid =com.database.UserDao.displayuserid((String)session.getAttribute("uname"));
    %>
    
 

<html>
<head><title></title>
<style>

	::-webkit-scrollbar {
   width: 5px;          
}

::-webkit-scrollbar-thumb {   
  border-radius: 30px;
  background: -webkit-gradient(linear,left top,left bottom,from(#ff8a00),to(#da1b60));
  box-shadow: inset 2px 2px 2px rgba(255,255,255,.25), inset -2px -2px 2px rgba(0,0,0,.25);}

::-webkit-scrollbar-track {     
  background-color: #fff;
  border-radius:10px;
  background: linear-gradient(to right,#201c29,#201c29 1px,#100e17 1px,#100e17);
}

html,body {
    height: 100%;
	margin: 0;
	background-image: url("images/img16.gif");
		background-repeat: no-repeat;
		 background-size: 100% 230%;
  }
  
  
  #panel{
  
  
  }
input[type=submit] {
    padding:5px 15px; 
    background:#818589; 
    color :white;
    border:0 none;
    cursor:pointer;
    -webkit-border-radius: 5px;
    border-radius: 5px; 
}

input[type=submit]:hover {
  background-color:#71797E;
  color: white;
}

</style>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>



</head>

<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="background-color: rgba(61, 62, 96, 0.9);">
			<!-- Brand -->
			<a class="navbar-brand" href="#" >CipherSage    Welcome (<% out.println((name));%>) </a>

			<!-- Links -->
			<div style="margin-left: auto;">
			<ul class="navbar-nav">
			<li class="nav-item">
			<a class="nav-link" href="index.jsp">Home</a>
			</li>
			<li class="nav-item">
			<a class="nav-link" href="logout">logout</a>
			</li>
			<li class="nav-item">
			<a class="nav-link" href="about.html">About</a>
			</li>
  
			</ul>
		</div>
	</nav>

    <div id="panel" style="background-image:"images/img16.gif";height:100%;width:100%;">
	
	
	
  <div style="height:200%; width:80%; margin-left:10%;margin-top:5%;padding:20px; background-color:white;opacity: 0.9;border-radius:2%;">
    <h3 style="text-align: center;">My new Blog</h3>
  
     <form method="post" action="blog" enctype="multipart/form-data">
    <div style="margin-top:70px;">
    <div  style="margin-right:30px;"><input type="submit"  value="Publish" style="margin-right:20px;"></div><br>
    
  <h5> current Date and Time = <span id="time"> </span></h5>
    
     <label for="username" class="form-label"><b>Username</b></label>
    <input class="form-control" type="text" disabled="disabled"  name="username" value="<% out.println(userid); %> " required fixed ">	
    
    <label for="time" class="form-label"><b>Date</b></label>
    <input class="form-control" id="curdate" type="text" disabled="disabled"  name="date" value="" required fixed ">
    
    <label for="time" class="form-label"><b>Time</b></label>
    <input class="form-control" id="curtime" type="text" disabled="disabled"  name="time" value="" required fixed ">
  
    
    
    <label for="author" class="form-label"><b>Author</b></label>
    <input class="form-control" type="text" disabled="disabled"  name="author" value="<% out.println(session.getAttribute("name")); %> " required fixed ">	
    
     <label for="img" class="form-label"><b>image</b></label>
     <input class="form-control" type="file" name="img"  >
    
    <label for="title" class="form-label"><b>Title</b></label>
    <input class="form-control" type="text" placeholder="Add title" name="title" required>

    <label for="info" class="form-label"><b>Short Info</b></label>
    <input class="form-control" type="text" placeholder="Add Info" name="info" required>
    
    <label for="msg" class="form-label"><b>Description</b></label>
    <textarea  class="form-control" name="paragraph_text" cols="100" rows="20"></textarea>
  
    </form>
    </div>

    
    </div>
    


	<footer class="bg-body-tertiary text-center text-lg-start" style="margin-top:5%;margin-left:0%;margin-right:0%">
  <!-- Copyright -->
  
   <div class="text-center p-3" style="background-color: rgba(61, 62, 96, 0.9);color:white;margin-top:0%">designed by @pooja_08 </div>
    

  <!-- Copyright -->
</footer>

<script>
	let now = new Date();
	let hour = now.getHours();
	let minute = now.getMinutes();

	const currenttime=hour+":"+minute;
	
	const today = new Date();
	const yyyy = today.getFullYear();
	let mm = today.getMonth() + 1; // Months start at 0!
	let dd = today.getDate();
	

	if (dd < 10) dd = '0' + dd;
	if (mm < 10) mm = '0' + mm;

	const formattedToday = dd + '/' + mm + '/' + yyyy;

	document.getElementById("time").textContent = formattedToday+", "+currenttime; //it will print on html page
	document.getElementById('curdate').setAttribute('value', formattedToday);
	document.getElementById('curdate').value = formattedToday;
	document.getElementById('curtime').setAttribute('value', currenttime);
	document.getElementById('curtime').value = currenttime;
	
function myFunction1() {
  document.getElementById("panel").style.display = "block";
}
function myfun2() {
	  document.getElementById("panel").style.display = "none";
	}
</script>

</body>
</html>
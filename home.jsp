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
<head><title>profile page</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>Bootstrap Example</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
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
		.container{
		
		width:30 00px;
		height:100%;
		position:relative;
		background-color:yellow;
		padding:0%;
		margin:0%
		}
		.profile{
				position:absolute;
				width:17%;
				height:100%;
				background-color:green;
				background-image: url("images/img16.gif");
				
				background-position: center;
				background-repeat: no-repeat;
				background-size: cover;
				margin-left:0%;
		}
		
		.frame{
		
		position:absolute;
		margin-top:10%;
		margin-left:17%;
		height:79%;
		width:63.6%;
		
		
		}
		
		.chat{
		position:absolute;
		margin-left:80.7%;
		height:0%;
		width:19.3%;
		background-color:green;	
		z-index:1 ;
		transition: 0.5s;
		
}

.space{
	position:absolute;
		margin-left:17%;
		height:22%;
		width:83%;
		background-color:green;
		background-image: url("images/img16.gif");
		background-repeat: no-repeat;
		 background-size: 100% 100%;
		 
		box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.button
{	
	position:absolute;
	margin-left:74%;
	width:26%;
	margin-top:10px;
}
  
  </style>

</head>

<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="background-color: rgba(61, 62, 96, 0.9);">
			<!-- Brand -->
			<a class="navbar-brand" href="#" >CipherSage (Welcome <% out.println(session.getAttribute("name")); %>)</a>

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
<div id="scroll-x" class="container-fluid" style=" height:100%; margin:0%; padding:0%;">
	
  <div class="profile" >
  <div class="img"  >
  
  <img src="images/POOJA.jpeg" alt="profile photo" height="150px"width="150px" style="position:absolute;border-radius: 100%;margin-top:20%;margin-left:17%;";></div>
		<div style="color: white; position:absolute; margin-top:100%;margin-left:8%;  font-family: Arial, Helvetica, sans-serif;text-align: center;">
				<h4><%out.println(name); %></h4>
				<h6>user_id:<%out.println(userid); %></h6>
				<h6>email:<%out.println(email); %></h6>
				<br><br>
				<p>Published blog: 3</p>
				<p>friend_list: 23 friends</p>
				<p>existence: huginn</p>
		</div>		
  </div>
   <div   class="frame" ><iframe src="blogpage1.jsp" height="99.5%" width="130.5%;"></iframe></div>
   <div class="chat" id="panel" ><iframe src="friendlist.jsp" height="150%" width="100%"></iframe></div>
   <div class="space">
   <div style="position:absolute;height:30%;width:80%; margin:left:40%; margin-top:1%;color:white;"><h2 style="position:absolute; padding-left:40%;padding-top:2%;font-family:Lucida Console;;  text-align: center;font-weight:bold;">Blogging Realm...</h2> </div>
   <div style="position:absolute;height:30%;width:80%; margin:left:40%; margin-top:4%;color:white;">
   <p style="position:absolute; padding-left:28%;padding-top:3%;text-align: center;">The world is full of magical things patiently waiting for our wits to grow sharper.</p> </div>
   <div style="position:absolute;height:10%:width:40%;background-color:red; margin:left:20%;margin-top:10.1%;color:white;">recently published blog.... </div>
   
   
   <div class="button">
   <button type="button"  onclick="myfun2()" class="btn-close btn-close-white" aria-label="Close" id="cls_btn" style=" display:none;z-index:1;" > </button>
   <button type="button" id="myButton"  class="btn btn-outline-light" style="margin-left:35px;margin:top:20px;width:120px;">Create Blog</button>
   <button type="button" onclick="myFunction1()" class="btn btn-outline-light" style="margin-left:15px;margin:top:20px; width:90px;">Chat</button>
   
   
   </div></div>

 </div>

<footer class="bg-body-tertiary text-center text-lg-start" style="margin-top:0%">
  <!-- Copyright -->
  
   <div class="text-center p-3" style="background-color: rgba(61, 62, 96, 0.9);color:white;margin-top:0%">designed by @pooja_08 </div>
    

  <!-- Copyright -->
</footer>

<script>

document.getElementById("myButton").onclick = function () {
        location.href = "new_blog.jsp";
    };
	
	

function myFunction1() {
  
  document.getElementById("panel").style.height = "67%";
  document.getElementById("cls_btn").style.display = "block";
}
function myfun2() {
	  document.getElementById("panel").style.height = "0%";
	  document.getElementById("cls_btn").style.display = "none";}



</script>

</body>


</html>  
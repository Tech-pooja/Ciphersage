........
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
 
 
<!DOCTYPE html>
<html>
	<head><title>blogpage</title>
	<style>
	
	
	html,body {
    height: 100%;
	margin: 0;
  }
  
	
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
	
	.scroll-parent {
  position: relative;
  width: 100%;
  height: 100%;
  overflow-x: hidden;
}

.scroll-element {
  width: inherit;
  height: inherit;
  position: absolute;
  left: 0%;
  top: 0%;
  animation: primary 3s linear infinite;
}

@keyframes primary {
  from {
    left: 0%;
  }
  to {
    left: -100%;
  }
}
	.primary {
  animation: primary 15s linear infinite;
}
.secondary {
  animation: secondary 15s linear infinite;
}

@keyframes primary {
  from {
    top: 0%;
  }
  to {
    top: -100%;
  }
}

@keyframes secondary {
  from {
    top: 100%;
  }
  to {
    top: 0%;
  }
}
	.dis{
background-color: transparent;
  width: 85%;
  height: 20%;
  perspective: 1000px;
  margin:5%;
  margin-top:10%;
  margin-left:9%;
   position: relative;


}
.blog-card
{
	background-color: white;
  width: 80%;
  height: 200%;
  perspective: 150%;
  margin-top:2%;
  position: absolute;
  z-index: -1;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  padding-left: 20%;



}

.blog-card-inner{
	padding:15px;
}

.flip-card {
 
  background-color: transparent;
  width: 200px;
  height: 200px;
  perspective: 1000px;
  margin:20px;
  position: absolute;
  border-radius:10%
}

.flip-card-inner {
  position: relative;
  width: 99%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  border-radius:10%
  
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: white;
  color: black;
}

.flip-card-back {
  background-color: white;
  color: black;
  transform: rotateY(180deg);
}

.head1{
	color: gray;
	font-family: Arial, Helvetica, sans-serif;
	margin-left:5%;
	margin-top:2%;
}


</style>
	</head>
	
	<body>
	
	<div class="scroll-parent">
	<div class="scroll-element primary">
	<div class="head1"> <h3>Freshly Unveiled Blog Post......</h3> </div>
	
	
	
	
	
	
	<% ArrayList<Integer>  id =com.database.BlogDao.displayid((String)session.getAttribute("uid"));
 
 ArrayList<String> userid=com.database.BlogDao.displayuserid((String)session.getAttribute("uid"));
 	
 	
 ArrayList<String>  author=com.database.BlogDao.displayAuthor((String)session.getAttribute("uid"));
 	
 ArrayList<String>  pubdate=com.database.BlogDao.displayPubdate((String)session.getAttribute("uid"));
 	
 ArrayList<String>  title=com.database.BlogDao.displayTitle((String)session.getAttribute("uid"));
 	
 ArrayList<String>  info=com.database.BlogDao.displayInfo((String)session.getAttribute("uid"));
 	
 ArrayList<String>  msg=com.database.BlogDao.displayMsg((String)session.getAttribute("uid"));

 //out.println("yrr gdbd"+author.size());
 
 for(int i=0;i<author.size();i++)	
 
 {
	 //out.println(id.get(i)+" "+userid.get(i)+" "+author.get(i)+" "+pubdate.get(i)+" "+title.get(i)+" "+info.get(i)+" "+msg.get(i));
 
	 { %>

	<div class="dis" >
		<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="images/norseimg1.jpg" alt="Avatar" style="width:200px;height:110px;">
	  <h4><%}out.println(title.get(i)); {%></h4>
	  <h6>date:<%}out.println(pubdate.get(i));{ %></h6>
	  
    </div>
    <div class="flip-card-back">
      <h3>Author: <%}out.println(author.get(i)); {%></h3> 
      <p>Title: <%}out.println(title.get(i));{ %></p>
      <p>Info: <%}out.println(info.get(i)); {%></p> 
      <p></p>
    </div>
  </div>
</div>

<div class="blog-card">
  <div class="blog-card-inner">
		<p style="padding-left:5%;">description:<%}
      
      if(msg.get(i).length()>30)
      {out.println(msg.get(i).substring(0,31));}
      else
      { out.println(msg.get(i));} {%>  <a href="" >read more</a>
</p>
   
  </div>
</div>

</div>


<%}} %>

<br>


<script>

window.setInterval(function() {
  var elem = document.getElementById('data');
  elem.scrollTop = elem.scrollHeight;
}, 5000);

</script>

	</body>

</html>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body style="
    background-image: url('images/img5.gif'); background-repeat: no-repeat; background-size: 100%,100%;
    height: 100vh;
  " >
		
		<% response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>
		
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<!-- Brand -->
			<a class="navbar-brand" href="#" >CipherSage</a>

			<!-- Links -->
			<div style="margin-left: auto;">
			<ul class="navbar-nav">
			<li class="nav-item">
			<a class="nav-link" href="index.jsp">Home</a>
			</li>
			<li class="nav-item">
			<a class="nav-link" href="login.jsp">Login</a>
			</li>
			<li class="nav-item">
			<a class="nav-link" href="about.html">About</a>
			</li>
  
			</ul>
		</div>
	</nav>
	
		
	

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="Registration" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label>
									 <input type="text" name="name" id="name" placeholder="Your Name" required />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> 
								<input
									type="email" name="email" id="email" placeholder="Your Email" required/>
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" required/>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" required/>
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Contact no" required/>
							</div>
							
						<p style="color:green;">	 <% 
    	if(request.getParameter("registerationStatus")==null)
    	{}
    	else
    	{out.println("("+request.getParameter("registerationStatus")+")");}
    
    %></p>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
							
							
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/img2.gif" alt="sing up image" style="border-radius: 50%;  width:400px">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>



</body>

</html>
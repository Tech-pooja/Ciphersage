package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.database.User;
import com.database.UserDao;


/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String username=(request.getParameter("username"));
		String password=(request.getParameter("password"));
		
		User ob=new User(username,password);
		try {
			if(UserDao.isadmin(ob))
			{	
				String userid=UserDao.displayuserid(username);
				System.out.println("userid aya ya nhi.....");
				System.out.println( userid);
				
				HttpSession session=request.getSession();  
	        	session.setAttribute("uname",username);
	        	session.setAttribute("uid",userid);
	        	String name=UserDao.displayname(username);
	        	session.setAttribute("name",name);
				response.sendRedirect("home.jsp");}
			else
			{   response.sendRedirect("login.jsp?loginStatus="+".....**invalid username and password**....");
				out.println("invalid username and password");
			}
		} catch (SQLException e) {e.printStackTrace();}
	}
	}



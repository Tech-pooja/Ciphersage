package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.database.User;
import com.database.UserDao;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		
		
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			
			String password=request.getParameter("pass");
			String repassword=request.getParameter("re_pass");
			String contact=request.getParameter("contact");
			User ob =new User(name,email,password,contact);
			if(password.equals(repassword))
			{	try {
				if(UserDao.checkEmail(ob))
				{	response.sendRedirect("registration.jsp?registerationStatus="+"Email already exist....");
					out.println("Email already exist....");
				}
				else
				{
					boolean insertStatus=UserDao.insertData(ob);
					if(insertStatus==true)
					{	 
						response.sendRedirect("registration.jsp?registerationStatus="+"Susccessfully registered......");
						}
					else
					{	response.sendRedirect("registration.jsp?registerationStatus="+"Something went wrong....");
						out.println("Something went wrong....");}
				}
				} catch (SQLException e) {e.printStackTrace();}
				
				
			}
			else
			{	response.sendRedirect("registration.jsp?registerationStatus="+"password didn't match....");
				out.println("password didn't match....");}
		
	}

}

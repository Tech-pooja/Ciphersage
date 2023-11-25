package com.user;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.database.BlogDao;
import com.database.BlogObject;
import com.database.UserDao;


/**
 * Servlet implementation class blog
 */
@WebServlet("/blog")
@MultipartConfig(maxFileSize = 16177216)
public class blog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public blog() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(); 
		String username=(String) session.getAttribute("uid");
		String author=(String) session.getAttribute("name");
		String title=request.getParameter("title");
		String info=request.getParameter("info");
		String description=request.getParameter("paragraph_text");
		InputStream inputStream = null; // input stream of the upload file
		
		System.out.println("blg page ...  "+username+" "+author+" "+title+" "+info+" "+description+" ");
        
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("img");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
        else
        {
        	System.out.println("photo nhi ayaaa reee");
        }
        
       BlogObject ob=new BlogObject(username,author,title,info,description,inputStream);
       
    	   	boolean insertStatus=BlogDao.insertBlogData(ob);
    	   	if(insertStatus==true)
			{	 
    	   		
    	   		
	        	
				response.sendRedirect("home.jsp?publishStatus="+"Susccessfully published......");
				}
			else
			{	response.sendRedirect("home.jsp?publishStatus="+"Something went wrong....");
				out.println("Something went wrong....");
			}
	 
	}

}

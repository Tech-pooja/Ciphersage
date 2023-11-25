package com.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class BlogDao {
	
	public static boolean insertBlogData(BlogObject bo)
	{	
		boolean f=false;
		Connection con =CP.createC();
		String q="insert into blog (userid,pubdate,author,Title,info,msg,img) values (?,?,?,?,?,?,?)";
		
		try {
			//prepared statement object of current connection.....
			
			
			
			int id=displaycurrid()+1;
			
			String username=bo.getUsername();
			PreparedStatement pstmt=con.prepareStatement(q);
			
			
				
			pstmt.setString(1,username);
			
			java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
			pstmt.setTimestamp(2,date);
			
			pstmt.setString(3,bo.getAuthor());
			pstmt.setString(4,bo.getTitle());
			pstmt.setString(5,bo.getInfo());
			pstmt.setString(6,bo.getDescription());
			pstmt.setBlob(7, bo.getInputStream());
	            
	 
			
			//execute the statement.....
			pstmt.executeUpdate();
			f=true;
			
		} catch (SQLException e) {e.printStackTrace();}
		return f;
		
	}
	
	
	
	
	public static ArrayList<Integer> displayid(String username)
	{
		Connection con =CP.createC();
		String q="select blogid from blog where userid='"+username+"'";
		
		try {
			//prepared statement object of current connection.....
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			ArrayList<Integer> id=new ArrayList<Integer>();
			while(set.next())
			{ id.add(set.getInt(1));}
			
			return id;
	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	public static ArrayList<String> displayuserid(String username)
	{
		Connection con =CP.createC();
		String q="select userid from blog where userid='"+username+"'";
		
		try {
			//prepared statement object of current connection.....
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			ArrayList<String> userid=new ArrayList<String>();
			while(set.next())
			{ userid.add(set.getString(1));}
			
			return userid;
	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	
	public static ArrayList<String> displayAuthor(String username)
	{
		Connection con =CP.createC();
		String q="select author from blog where userid='"+username+"'";
		
		try {
			//prepared statement object of current connection.....
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			
			ArrayList<String> author=new ArrayList<String>();
			while(set.next())
			{ author.add(set.getString(1));}
			
			return author;
	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	public static ArrayList<String> displayPubdate(String username)
	{
		Connection con =CP.createC();
		String q="select pubdate from blog where userid='"+username+"'";
		
		try {
			//prepared statement object of current connection.....
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			ArrayList<String> pubdate=new ArrayList<String>();
			while(set.next())
			{ pubdate.add(set.getString(1));}
			
			return pubdate;
			
			
	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	
	public static ArrayList<String> displayTitle(String username)
	{
		Connection con =CP.createC();
		String q="select title from blog where userid='"+username+"'";
		
		try {
			//prepared statement object of current connection.....
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			ArrayList<String> title=new ArrayList<String>();
			while(set.next())
			{ title.add(set.getString(1));}
			
			return title;
	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	
	public static ArrayList<String> displayInfo(String username)
	{
		Connection con =CP.createC();
		String q="select info from blog where userid='"+username+"'";
		
		try {
			//prepared statement object of current connection.....
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			ArrayList<String> info=new ArrayList<String>();
			while(set.next())
			{ info.add(set.getString(1));}
			
			return info;
	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	public static ArrayList<String> displayMsg(String username)
	{
		Connection con =CP.createC();
		String q="select msg from blog where userid='"+username+"'";
		
		try {
			//prepared statement object of current connection.....
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			ArrayList<String> msg=new ArrayList<String>();
			while(set.next())
			{ msg.add(set.getString(1));}
			
			return msg;
	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	
	
	
	public static int displaycurrid()
	{
		Connection con =CP.createC();
		String q="select blogid from blog ORDER BY blogid DESC";
		
		try {
			//prepared statement object of current connection.....
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			return set.getInt(1);
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
		
	}
	public static ResultSet displayimage(String username)
	{		String img =null;
			Connection con =CP.createC();
			String q="select img from blog where userid='"+username+"'";
		
		try {
			//prepared statement object of current connection.....
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			return set;
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	
	public static ResultSet displayid()
	{		String img =null;
		Connection con =CP.createC();
		String q="select iduser from blog";
		
		try {
			//prepared statement object of current connection.....
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			return set;
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}

}

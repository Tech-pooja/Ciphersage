package com.database;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDao {
	
	
	public static boolean insertData(User st)
	{	
		boolean f=false;
		Connection con =CP.createC();
		String q="insert into user (uname,uemail,upwd,umob,user_id) values (?,?,?,?,?)";
		
		try {
			int id=displaycurrid()+1;
			String username=id+"_"+st.getName();
			//prepared statement object of current connection.....
			PreparedStatement pstmt=con.prepareStatement(q);
			pstmt.setString(1,st.getName());
			pstmt.setString(2,st.getEmail());
			pstmt.setString(3,st.getPassword());
			pstmt.setString(4,st.getMobile());
			pstmt.setString(5,username);
			
			//execute the statement.....
			pstmt.executeUpdate();
			f=true;
			
		} catch (SQLException e) {e.printStackTrace();}
		return f;
		
	}
	
	public static boolean checkEmail(User ob) throws SQLException
	{	Connection con =CP.createC();
	String q="SELECT uemail FROM user;";
	Statement stmt=con.createStatement();
	ResultSet set = stmt.executeQuery(q);
	while(set.next()) 
	{
		if(set.getString(1).equals(ob.getEmail()))
		{
			return true;
		}
	}
	
		return false;
	}
	
	public static boolean isadmin(User ob) throws SQLException
	{	Connection con =CP.createC();
		String q="SELECT uemail,upwd FROM user;";
		Statement stmt=con.createStatement();
		ResultSet set = stmt.executeQuery(q);
		
		while(set.next())
		{
			if(set.getString(1).equals(ob.getEmail())&&set.getString(2).equals(ob.getPassword()))
			{
				return true;
			}
		}
		
		return false;
		
	}
	
	public static int displaycurrid()
	{
		Connection con =CP.createC();
		String q="select iduser from user ORDER BY iduser DESC";
		
		try {
			//prepared statement object of current connection.....
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			
			set.next();
			return set.getInt(1);
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
		
	}
	

	public static int displayid(String username)
	{
		Connection con =CP.createC();
		
		String q="select iduser from User ORDER BY iduser DESC where uemail='"+username+"'";
		
		try {
			//prepared statement object of current connection.....
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			
			set.next();
			return set.getInt(1);
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
		
	}
	
	public static String displayname(String username)
	{
		Connection con =CP.createC();
		String q="select uname from User where uemail='"+username+"'";
		
		try {
			//prepared statement object of current connection.....
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			
			set.next();
			return set.getString(1);
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	public static String displayuserid(String username)
	{		
		Connection con =CP.createC();
		String q="select user_id from CipherSage.user where uemail='"+username+"'";
		
		try {
			//prepared statement object of current connection.....
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			set.next();
			System.out.println(username+" "+set.getString(1));
			return set.getString(1);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}


}

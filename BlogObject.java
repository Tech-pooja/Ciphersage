package com.database;

import java.io.InputStream;

public class BlogObject {
	
	String username;
	String author;
	String title;
	String info;
	String description;
	InputStream inputStream;
	
	
	public String getUsername() {
		return username;
		
	}

	public void setUsername(String username) {
		this.username = username;
	}

	
	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	 
	
	public BlogObject(String username, String author, String title, String info,
			String description, InputStream inputStream) {
		
		this.username = username;
	
		this.author = author;
		this.title = title;
		this.info = info;
		this.description = description;
		this.inputStream = inputStream;
		
		
		
	}
	
	
	

}

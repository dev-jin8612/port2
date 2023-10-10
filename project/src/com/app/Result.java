package com.app;

public class Result {
	private String path;
	private boolean isRedirect;
	
	
	//기본생성자, getter setter, toString 
	//hashcode 안필요
	public Result() {;} 

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}

}

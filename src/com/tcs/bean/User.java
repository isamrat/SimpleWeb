package com.tcs.bean;

public class User {
	private String uid;
	private String pwd;
	private String name;
	private String phn;
	public User(String uid, String pwd, String name, String phn) {
		super();
		this.uid = uid;
		this.pwd = pwd;
		this.name = name;
		this.phn = phn;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhn() {
		return phn;
	}
	public void setPhn(String phn) {
		this.phn = phn;
	}
	
	
	

}

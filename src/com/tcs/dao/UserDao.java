package com.tcs.dao;

import java.util.ArrayList;

import com.tcs.bean.User;

public class UserDao {
	
	public ArrayList<User> createUser(){
		User usr1 = new User("sam","123","Samrat","8981846524");
		User usr2 = new User("xyz","789","Niladri","9679797051");
		User usr3 = new User("mnc","137","Meenakshi","8961183104");
		User usr4 = new User("arnab","420","Arnab","8981191464");
		ArrayList<User> userList = new ArrayList<User>();
		userList.add(usr1);
		userList.add(usr2);
		userList.add(usr3);
		userList.add(usr4);
		return userList;
	}
	public String users() {
		ArrayList<User> user = createUser();
		String user_details = "";
		for (User u : user) {
			user_details = user_details +" "+ u.getName() +" "+ u.getPhn() + "\n";
		}
		return user_details;
	}
	public String about(){
		return "Tata Consultancy Services (TCS) is one of the world's leading information technology companies. Through its Global Network Delivery ModelTM, Innovation Network, and Solution Accelerators, TCS focuses on helping global organizations address their business challenges effectively.";
	}
	public String contactUs(){
		return "Email:	Ultimatix.helpdesk@tcs.com"+"\n"+"Chat:	Global Helpdesk (on Sametime Client)"+"\n"+"VOIP:	500-5555US:	1-877-827-4639 IVR 2(Toll Free)"+"\n"+"India:	1800-267-6563 IVR 2(Toll Free)*"+"\n"+"Other Countries:	+91-22-66467810";
	}
}

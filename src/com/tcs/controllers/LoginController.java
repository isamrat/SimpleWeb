package com.tcs.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tcs.dao.UserDao;
import java.util.ArrayList;

import com.tcs.bean.User;


public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public LoginController() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();
		String name = request.getParameter("username").trim();
		String pass = request.getParameter("password").trim();
		
		UserDao dao=new UserDao();
		ArrayList<User> list = new ArrayList<User>();
		list = dao.createUser();
		RequestDispatcher rd = request.getRequestDispatcher("views/index.jsp");
		
		if(name != null && pass != null) {
			for(User u : list) {
				if(u.getPwd().equals(pass) && u.getUid().equals(name)){
					request.setAttribute("local", "");
					HttpSession session = request.getSession();
					session.setAttribute("username", name);
					response.sendRedirect("views/home.jsp");
				}
			}
			request.setAttribute("local", "invalid");
			rd.include(request, response);
			//out.println("wrong username or password");
			
			} else {
				rd.include(request, response);
				out.println("enter the username and password");
			}
		} 
	
	
}

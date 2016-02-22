package com.tcs.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tcs.dao.UserDao;

public class DisplayFilter extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DisplayFilter() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		
		PrintWriter out = response.getWriter();
		String param = (String) request.getParameter("flag");
		//out.println("flag= "+param);
		UserDao d = new UserDao(); 
		if(param.equals("aboutus")) {
			request.setAttribute("data", d.about());
			//response.sendRedirect("views/contactus.jsp");
			RequestDispatcher rd = request.getRequestDispatcher("views/aboutus.jsp");
			rd.forward(request, response);
		}
		if(param.equals("users")) {
			request.setAttribute("data", d.users());
			//response.sendRedirect("views/contactus.jsp");
			RequestDispatcher rd = request.getRequestDispatcher("views/users.jsp");
			rd.forward(request, response);
		}
		if(param.equals("contactus")) {
			request.setAttribute("data", d.contactUs());
			//response.sendRedirect("views/contactus.jsp");
			RequestDispatcher rd = request.getRequestDispatcher("views/contactus.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

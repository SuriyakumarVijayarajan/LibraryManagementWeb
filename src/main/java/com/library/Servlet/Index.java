package com.library.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.library.dao.impl.UsersDaoImpl;
import com.library.model.Users;





/**
 * Servlet implementation class Index
 */


@WebServlet("/signup11")
public class Index extends HttpServlet{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	HttpSession session = req.getSession();
	String user_name=req.getParameter("uname");
	String password=req.getParameter("password");
//	System.out.println(user_name+password);
//	UsersDaoImpl user = new UsersDaoImpl();
	System.out.println(user_name+password);
	UsersDaoImpl user = new UsersDaoImpl();
	Users u1 = new Users(user_name, password);
	System.out.println(user_name);
	System.out.println(password);
	
	String val = user.fetch(u1);
	
	
	System.out.println(val);
	if (val.equals("admin")) {
session.setAttribute("admin", user_name);
		System.out.println("welcome admin " + user_name);
		
		resp.sendRedirect("admin.jsp");
	}
	if (val.equals("supplier")) {
		session.setAttribute("supplier", user_name);
				System.out.println("welcome Supplier " + user_name);
				
				resp.sendRedirect("supplierLogin.jsp");
			}
	else if(val.equals("user")) {
		session.setAttribute("user", user_name);
		System.out.println("Welcome User" + user_name);
		int fineOf=0;
		Users u3 = new Users(fineOf,user_name);
		UsersDaoImpl user1=new UsersDaoImpl();
		int fineamount = user1.getFine(u3);
		System.out.println(fineamount);
		session.setAttribute("loginfine", fineamount);
		if(fineamount>0) {
			resp.sendRedirect("userFineCheck.jsp");
			}
		else if(fineamount==0) {
			resp.sendRedirect("user.jsp");
			}
		
		
	}
}
}

package com.library.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.library.dao.impl.FineHistoryDaoImpl;
import com.library.dao.impl.UsersDaoImpl;
import com.library.model.FineHistory;
import com.library.model.Users;

/**
 * Servlet implementation class ReturnSuccessServlet
 */
@WebServlet("/returnSuccess")
public class ReturnSuccessServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userWallet;
		HttpSession session=request.getSession();
		int fineOf=Integer.parseInt(session.getAttribute("fineamount").toString());
		String user_name=session.getAttribute("user").toString();
		Users u3=new Users(fineOf,user_name);
		UsersDaoImpl user=new UsersDaoImpl();
		FineHistoryDaoImpl fineHistory=new FineHistoryDaoImpl();
			try {
						userWallet=user.setFine(u3);
						FineHistory fh1 = new FineHistory(user_name, fineOf);
						fineHistory.insert(fh1);
						request.setAttribute("userWallet", userWallet);
						RequestDispatcher rd=request.getRequestDispatcher("returnSuccess.jsp");
						rd.forward(request, response);
						} catch (Exception e) {
											
						e.printStackTrace();
						}
		
	}

}

package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.User;


@WebServlet("/add_user")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name = req.getParameter("fname");
			String qua = req.getParameter("fquali");
			String email = req.getParameter("femail");
			String ps = req.getParameter("fpass");
			
			UserDAO dao = new UserDAO(DBConnect.getConn());
			
			User u = new User(name,email,ps,qua,"User");
			boolean f=dao.addUser(u);
			
			HttpSession session = req.getSession();
			
			if (f) {
				session.setAttribute("succMsg", "Registration Sucessfully");
				resp.sendRedirect("register.jsp");
			} else {
				session.setAttribute("succMsg", "Somethings wrong");
				resp.sendRedirect("register.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}

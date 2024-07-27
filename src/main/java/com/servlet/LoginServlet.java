package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.AdminsDAO;
import com.dao.RecuruterDAO;
import com.dao.UserDAO;
import com.entity.Admins;
import com.entity.Recruiter;
import com.entity.User;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String em = req.getParameter("email");
			String ps = req.getParameter("password");
			User u = new User();
			Recruiter r = new Recruiter();
			Admins a = new Admins();
			HttpSession session = req.getSession();

			if ("admin@gmail.com".equals(em) && "admin".equals(ps)) {
				// Admin login
				session.setAttribute("userobj", u);
				u.setRole("admin");
				resp.sendRedirect("admin.jsp");
			} else {
				// Regular user login
				UserDAO userDao = new UserDAO(DBConnect.getConn());
				User user = userDao.login(em, ps);

				// Recruiter login
				RecuruterDAO recruiterDao = new RecuruterDAO(DBConnect.getConn());
				Recruiter recruiter = recruiterDao.login(em, ps);

				AdminsDAO adminDao = new AdminsDAO(DBConnect.getConn());
				Admins admin = adminDao.Adminlogin(em, ps);

				if (user != null) {
					session.setAttribute("userobj", user);
					resp.sendRedirect("home.jsp");

				} else if (recruiter != null) {
					session.setAttribute("userobj", u);
					u.setRole("recruiter");
					System.out.println("Role: " + recruiter.getRole());
					session.setAttribute("recruiterobj", recruiter);
					resp.sendRedirect("recruiterHome.jsp");

				} else if (admin != null) {
					session.setAttribute("userobj", u);
					u.setRole("admin");
					System.out.println("Role: " + u.getRole());
					session.setAttribute("adminobj", admin);
					resp.sendRedirect("admin.jsp");
				} else {

					session.setAttribute("succMsg", "Email and password are invalid");
					resp.sendRedirect("login.jsp");
					System.out.println("Email and password are invalid");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

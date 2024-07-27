package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.RecuruterDAO;
import com.entity.Recruiter;

@WebServlet("/Add_Recruiter")
public class RegisterRecruiterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String ps = req.getParameter("ps");
			String location =req.getParameter("location");

			RecuruterDAO dao = new RecuruterDAO(DBConnect.getConn());

			Recruiter recruiter = new Recruiter();
			recruiter.setName(name);
			recruiter.setEmail(email);
			recruiter.setPassword(ps);
			recruiter.setLocation(location);

			boolean f = dao.addRecruiter(recruiter);

			HttpSession session = req.getSession();
			if (f) {
				System.out.println(f);
				session.setAttribute("succMsg", "Registration Succsfully");
				resp.sendRedirect("signup.jsp");
			} else {
				session.setAttribute("succMsg", "Something went wrong on the server");
				resp.sendRedirect("signup.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

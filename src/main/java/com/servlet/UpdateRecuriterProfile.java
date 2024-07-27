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
import com.dao.UserDAO;
import com.entity.Recruiter;
import com.entity.User;

@WebServlet("/update_profile1")
public class UpdateRecuriterProfile extends HttpServlet  {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String ps = req.getParameter("ps");
			String role = req.getParameter("role");
			String location = req.getParameter("location");
			
			RecuruterDAO dao = new RecuruterDAO(DBConnect.getConn());

			Recruiter r = new Recruiter();
			r.setId(id);
			r.setName(name);
			r.setPassword(ps);
			r.setEmail(email);
			r.setRole(role);
			r.setLocation(location);
			
			System.out.println("updated values of recruiter");
			boolean f = dao.updateUser1(r);
			System.out.println("recuriter update value  "+f);
			HttpSession session = req.getSession();
			if (f) {
				session.setAttribute("succMsg", "Profile is Updated Succsfully");
				resp.sendRedirect("home.jsp");
			} else {
				session.setAttribute("succMsg", "Something Worng On Server!!");
				resp.sendRedirect("home.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

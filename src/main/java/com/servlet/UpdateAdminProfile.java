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

@WebServlet("/update_profile2")
public class UpdateAdminProfile extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String address = req.getParameter("address");
			String contact = req.getParameter("contact");
			String ps = req.getParameter("ps");
			
			
			AdminsDAO dao = new AdminsDAO(DBConnect.getConn());

			Admins a = new Admins();
			a.setId(id);
			a.setName(name);
			a.setPassword(ps);
			a.setEmail(email);
			a.setAddress(address);
			a.setContact(contact);
			
			//System.out.println("updated values of recruiter");
			boolean f = dao.updateUser(a);
			//System.out.println("recuriter update value  "+f);
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

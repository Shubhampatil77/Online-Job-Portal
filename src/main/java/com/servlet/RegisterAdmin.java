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
import com.entity.Admins;

@WebServlet("/add_admin")
public class RegisterAdmin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String address = req.getParameter("address");
			String contact = req.getParameter("contact");
			String password = req.getParameter("password");

			AdminsDAO dao = new AdminsDAO(DBConnect.getConn());

			Admins admin = new Admins();
			admin.setName(name);
			admin.setEmail(email);
			admin.setAddress(address);
			admin.setContact(contact);
			admin.setPassword(password);

			boolean f = dao.addAdmins(admin);

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

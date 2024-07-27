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

@WebServlet("/update_profile")
public class UpdateUserServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("name");
			String qua = req.getParameter("qua");
			String email = req.getParameter("email");
			String ps = req.getParameter("ps");
			String city = req.getParameter("city");
			String state = req.getParameter("state");
			String phoneno = req.getParameter("phoneno");
			String gender = req.getParameter("gender");
			String pass_year = req.getParameter("pass_year");
			String dob = req.getParameter("dob");

			UserDAO dao = new UserDAO(DBConnect.getConn());

			User u = new User();
			u.setId(id);
			u.setName(name);
			u.setQualification(qua);
			u.setPassword(ps);
			u.setEmail(email);
			u.setCity(city);
			u.setState(state);
			u.setPhoneno(phoneno);
			u.setGender(gender);
			u.setPass_year(pass_year);
			u.setDob(dob);

			boolean f = dao.updateUser(u);
			HttpSession session = req.getSession();
			if (f) {
				session.setAttribute("succMsg", "Profile is Updated Sucessfully");
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

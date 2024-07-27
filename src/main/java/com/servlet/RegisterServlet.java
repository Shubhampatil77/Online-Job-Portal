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
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name = req.getParameter("name");
			String qua = req.getParameter("qua");
			String email = req.getParameter("email");
			String ps = req.getParameter("ps");
			String city = req.getParameter("city");
			String state = req.getParameter("state");
			String phone = req.getParameter("pho");
			String gender = req.getParameter("gender");
			String pass = req.getParameter("pass");
			String dob = req.getParameter("dob");

			UserDAO dao = new UserDAO(DBConnect.getConn());

			User u = new User();
			u.setName(name);
			u.setQualification(qua);
			u.setEmail(email);
			u.setPassword(ps);
			u.setCity(city);
			u.setState(state);
			u.setPhoneno(phone);
			u.setGender(gender);
			u.setPass_year(pass);
			u.setDob(dob);
			boolean f = dao.addUser(u);

			HttpSession session = req.getSession();
			if (f) {
				System.out.print(f);
				session.setAttribute("succMsg", "Registration Succsfully");
				resp.sendRedirect("signup.jsp");
			} else {
				session.setAttribute("succMsg", "Someting wrong on server");
				resp.sendRedirect("signup.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

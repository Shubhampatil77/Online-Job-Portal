package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.RecuruterDAO;
import com.entity.Recruiter;

@WebServlet("/edit_status")
public class Edit_rep_status extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));

			String role = req.getParameter("role");

			Recruiter u = new Recruiter();

			u.setId(id);
			u.setRole(role);

			RecuruterDAO dao = new RecuruterDAO(DBConnect.getConn());
			boolean f = dao.updateStatus(u);
			HttpSession session = req.getSession();
			if (f) {
				session.setAttribute("succMsg", "Profile is Updated Succsfully");
				RequestDispatcher view = req.getRequestDispatcher("report2.jsp");
				view.forward(req, resp);

			} else {
				session.setAttribute("succMsg", "Something Worng On Server!!");
				RequestDispatcher view = req.getRequestDispatcher("report2.jsp");
				view.forward(req, resp);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

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

@WebServlet("/delete_report2")
public class Delete_Report2 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			int id = Integer.parseInt(req.getParameter("id"));

			RecuruterDAO dao = new RecuruterDAO(DBConnect.getConn());
			boolean f = dao.deleteRecruiters(id);

			HttpSession session = req.getSession();

			if (f) {
				System.out.println(f);
				session.setAttribute("succMsg", "Job Delete  Succsfully");
				resp.sendRedirect("report2.jsp");
			} else {
				session.setAttribute("succMsg", "Someting Worng on Server");
				resp.sendRedirect("report2.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

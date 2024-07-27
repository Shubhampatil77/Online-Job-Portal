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

@WebServlet("/delete_report1")
public class delete_report1 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			int id = Integer.parseInt(req.getParameter("id"));

			UserDAO dao = new UserDAO(DBConnect.getConn());
			boolean f = dao.deleteUsers(id);

			HttpSession session = req.getSession();

			if (f) {
				System.out.println(f);
				session.setAttribute("succMsg", "Job Delete  Succsfully");
				resp.sendRedirect("report1.jsp");
			} else {
				session.setAttribute("succMsg", "Someting Worng on Server");
				resp.sendRedirect("report1.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

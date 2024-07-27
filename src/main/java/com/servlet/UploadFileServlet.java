package com.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DB.DBConnect;

@WebServlet("/add_file")
@MultipartConfig
public class UploadFileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Part p = req.getPart("files");
		String title = req.getParameter("title");
		String fileName = p.getSubmittedFileName();
		String name = req.getParameter("name");
		String qualification = req.getParameter("qualification");
		String email = req.getParameter("email");
		System.out.println(fileName + "  " + email);

		HttpSession session = req.getSession();

		try {

			Connection conn = DBConnect.getConn();
			PreparedStatement ps = conn
					.prepareStatement("insert into file(title,files,name,qualification,email) values(?,?,?,?,?)");
			ps.setString(1, title);
			ps.setString(2, fileName);
			ps.setString(3, name);
			ps.setString(4, qualification);
			ps.setString(5, email);

			int i = ps.executeUpdate();
			if (i == 1) {

				String path = getServletContext().getRealPath("") + "Files";
				File file = new File(path);
				p.write(path + File.separator + fileName);

				session.setAttribute("msg", "Uploaded Successfully");
				resp.sendRedirect("home.jsp");
				System.out.println(path);
				System.out.println(fileName);

			} else {
				session.setAttribute("msg", "Uploaded fail");

				resp.sendRedirect("fileupload.jsp");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String path = getServletContext().getRealPath("") + "imgs";
	}
}
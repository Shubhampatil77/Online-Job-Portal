package com.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
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

@WebServlet("/download")
@MultipartConfig
public class DownloadFile extends HttpServlet {
	public int BUFFER_SIZE = 1024 * 1000;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String filename = req.getParameter("files");
		String path = getServletContext().getRealPath("") + "Files" + File.separator + filename;
		File file = new File(path);

		System.out.print(path);

		OutputStream os = null;
		FileInputStream fi = null;

		if (file.exists()) {
			try {
				resp.setHeader("Content-Disposition", String.format("attachment; filename=\"%s\"", file.getName()));
				resp.setContentType("application/octet-stream");

				os = resp.getOutputStream();
				fi = new FileInputStream(file);

				byte[] buffer = new byte[BUFFER_SIZE];
				int bytesRead;

				while ((bytesRead = fi.read(buffer)) != -1) {
					os.write(buffer, 0, bytesRead);
				}
			} finally {
				if (os != null) {
					os.close();
				}
				if (fi != null) {
					fi.close();
				}
			}
		} else {
			System.out.print("File Is Not Found: " + filename);
			System.out.print("Path is ========" + path);

		}
	}
}

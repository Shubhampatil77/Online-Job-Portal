package com.servlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.JobDAO;
import com.entity.Jobs;

@WebServlet("/selecteduser2")
public class selectedEmployee extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String [] id=req.getParameterValues("selected");
			if(id!=null) {
				if(req.getParameter("Select")!=null) {
					try {
						approveUser(id);
					}catch(Exception e) {
						e.printStackTrace();
					}
				}
			}
			
 		} catch (Exception e) {
			e.printStackTrace();
		}
		resp.sendRedirect("selected_can.jsp");
	}

	private void approveUser(String[] id) throws SQLException, ClassNotFoundException {
		
  
		Connection conn=null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","1234");
		String sql = "update  file set employee=1 where id=? order by id DESC";
		PreparedStatement ps = conn.prepareStatement(sql);
		for(String ids:id) {
			ps.setString(1, ids);
			int result=ps.executeUpdate();
			System.out.println(result);
		}
	}
}

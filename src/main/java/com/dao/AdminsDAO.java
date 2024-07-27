package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.entity.Admins;
import com.entity.Recruiter;

public class AdminsDAO {
	private Connection conn;

	public AdminsDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addAdmins(Admins admin) {
		boolean f = false;
		try {
			String sql = "insert into admins(name,email,address,contact,password,role) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, admin.getName());
			ps.setString(2, admin.getEmail());
			ps.setString(3, admin.getAddress());
			ps.setString(4, admin.getContact());
			ps.setString(5, admin.getPassword());
			ps.setString(6, "admin");

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public Admins Adminlogin(String em, String psw) {
		Admins u = null;
		try {
			String sql = "select * from admins where email=? and password=? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, em);
			ps.setString(2, psw);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new Admins();
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setAddress(rs.getString(4));
				u.setContact(rs.getString(5));
				u.setPassword(rs.getString(6));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}
	public boolean updateUser(Admins a) {
		boolean f = false;
		try {
			//System.out.println(u);
			String sql = "update admins set name=?,email=?,address=?,contact=?,password=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, a.getName());
			ps.setString(2, a.getEmail());
			ps.setString(3,a.getAddress());
			ps.setString(4, a.getContact());
			ps.setString(5, a.getPassword());
			
			ps.setInt(6, a.getId());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

}
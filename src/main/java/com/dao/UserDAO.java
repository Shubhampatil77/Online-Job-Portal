package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Jobs;
import com.entity.User;

public class UserDAO {
	private Connection conn;

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addUser(User u) {
		boolean f = false;
		try {
			String sql = "insert into users(name,email,password,qualification,role,city,state,phoneno,gender,pass_year,dob) values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getQualification());
			ps.setString(5, "user");
			ps.setString(6, u.getCity());
			ps.setString(7, u.getState());
			ps.setString(8, u.getPhoneno());
			ps.setString(9, u.getGender());
			ps.setString(10, u.getPass_year());
			ps.setString(11, u.getDob());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public User login(String em, String psw) {
		User u = null;
		try {
			String sql = "select * from users where email=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, em);
			ps.setString(2, psw);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new User();
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setQualification(rs.getString(5));
				u.setEmail(rs.getString(3));
				u.setPassword(rs.getString(4));
				u.setRole(rs.getString(6));
				u.setCity(rs.getString(8));
				u.setState(rs.getString(9));
				u.setPhoneno(rs.getString(10));
				u.setGender(rs.getString(11));
				u.setPass_year(rs.getString(12));
				u.setDob(rs.getString(13));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}

	public boolean updateUser(User u) {
		boolean f = false;
		try {
			String sql = "update users set name=?,qualification=?,email=?,password=?,city=?,state=?,phoneno=?,gender=?,pass_year=?,dob=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getQualification());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getPassword());
			ps.setString(5, u.getCity());
			ps.setString(6, u.getState());
			ps.setString(7, u.getPhoneno());
			ps.setString(8, u.getGender());
			ps.setString(9, u.getPass_year());
			ps.setString(10, u.getDob());
			ps.setInt(11, u.getId());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

//for report page
	public List<User> getAllUsers() {
		List<User> list = new ArrayList<User>();

		try {
			String sql = "SELECT * FROM users WHERE role = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "user");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setQualification(rs.getString(5));
				user.setCity(rs.getString(8));
				user.setState(rs.getString(9));
				user.setDob(rs.getString(13));
				user.setPhoneno(rs.getString(10));
				user.setGender(rs.getString(11));
				user.setUser_date(rs.getString(7));
				user.setPass_year(rs.getString(12));
				list.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean deleteUsers(int id) {
		boolean f = false;
		try {
			String sql = "delete from users where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

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

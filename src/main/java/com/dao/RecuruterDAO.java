package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Jobs;
import com.entity.Recruiter;
import com.entity.User;

public class RecuruterDAO {
	private Connection conn;

	public RecuruterDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addRecruiter(Recruiter recruiter) {
		boolean f = false;
		try {
			String sql = "insert into Recruiters(name,email,password,role,location) values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, recruiter.getName());
			ps.setString(2, recruiter.getEmail());
			ps.setString(3, recruiter.getPassword());
			ps.setString(4, "Inactive");
			ps.setString(5, recruiter.getLocation());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public Recruiter login(String em, String psw) {
		Recruiter u = null;
		try {
			String sql = "select * from Recruiters where email=? and password=? and role='Active'";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, em);
			ps.setString(2, psw);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new Recruiter();
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPassword(rs.getString(4));
				u.setRole(rs.getString(5));
				u.setLocation(rs.getString(6));
				u.getReg_date();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}

	public boolean updateUser(User u) {
		boolean f = false;
		try {
			String sql = "update Recruiters set name=?,email=?,password=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setInt(4, u.getId());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

//update status 
	public boolean updateStatus(Recruiter u) {
		boolean f = false;
		try {
			String sql = "update recruiters set role=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, u.getRole());
			ps.setInt(2, u.getId());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public List<Recruiter> getAllUserss() {
		List<Recruiter> list = new ArrayList<Recruiter>();

		try {
			String sql = "SELECT * FROM recruiters WHERE role = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Recruiter");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Recruiter re = new Recruiter();
				re.setId(rs.getInt(1));
				re.setName(rs.getString(2));
				re.setEmail(rs.getString(3));
				re.setReg_date(rs.getString(6));
				list.add(re);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	// for diaply all record in recruter table
	public List<Recruiter> getAllUsers() {
		List<Recruiter> list = new ArrayList<Recruiter>();

		try {
			String sql = "SELECT * FROM recruiters";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Recruiter re = new Recruiter();
				re.setId(rs.getInt(1));
				re.setName(rs.getString(2));
				re.setEmail(rs.getString(3));
				re.setRole(rs.getString(5));
				re.setReg_date(rs.getString(6));
				re.setLocation(rs.getString(7));
				list.add(re);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public Recruiter getRecruiterbyid(int id) {
		Recruiter u = null;
		try {
			String sql = "select * from Recruiters where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new Recruiter();
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPassword(rs.getString(4));
				u.setRole(rs.getString(5));
				u.getReg_date();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}

	public boolean deleteRecruiters(int id) {
		boolean f = false;
		try {
			String sql = "delete from recruiters where id=?";
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
	public int getNumberRecruiterCount() {
	    int count = 0;
	    try {
	        String sql = "select count(*) from recruiter";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            count = rs.getInt(1);
	        }
	        
	        // Close the ResultSet, PreparedStatement, and connection if necessary

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return count;
	}

	public boolean updateUser1(Recruiter u) {
		boolean f = false;
		try {
			//System.out.println(u);
			String sql = "update recruiters set name=?,email=?,password=?,role=?,location=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getRole());
			ps.setString(5, u.getLocation());
			ps.setInt(6, u.getId());

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

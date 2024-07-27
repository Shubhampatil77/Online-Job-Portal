package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Jobs;

public class JobDAO {
	private Connection conn;

	public JobDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addJobs(Jobs j) {
		boolean f = false;
		try {

		String sql = "insert into job(title,description,category,status,location,vacancy,salary,experience,job_type,recruiter_email) values(?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, j.getTitle());
			ps.setString(2, j.getDescription());
			ps.setString(3, j.getCategory());
			ps.setString(4, j.getStatus());
			ps.setString(5, j.getLocation());
			ps.setString(6, j.getVacancy());
			ps.setString(7, j.getSalary());
			ps.setString(8, j.getExperience());
			ps.setString(9, j.getJob_type());
			ps.setString(10,j.getRecruiter_email());
			
			int i = ps.executeUpdate();
			System.out.println("insert post   "+ps);
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public List<Jobs> getAllJobs() {
		List<Jobs> list = new ArrayList<Jobs>();
		Jobs j = null;

		try {
			String sql = "select * from job order by id desc";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				j = new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdate(rs.getTimestamp(7) + "");
				j.setVacancy(rs.getString(8));
				j.setSalary(rs.getString(9));
				j.setExperience(rs.getString(10));
				j.setJob_type(rs.getString(11));
				list.add(j);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<Jobs> getAllJobsForUser() {
		List<Jobs> list = new ArrayList<Jobs>();
		Jobs j = null;

		try {
			String sql = "select * from job where status=? order by id desc";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Active");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				j = new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdate(rs.getTimestamp(7) + "");
				j.setVacancy(rs.getString(8));
				j.setSalary(rs.getString(9));
				j.setExperience(rs.getString(10));
				j.setJob_type(rs.getString(11));
				list.add(j);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public Jobs getJobById(int id) {
		Jobs j = null;
		try {
			String sql = "select * from job where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				j = new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdate(rs.getTimestamp(7) + "");
				j.setVacancy(rs.getString(8));
				j.setSalary(rs.getString(9));
				j.setExperience(rs.getString(10));
				j.setJob_type(rs.getString(11));
				//j.setRecruiter_email(rs.getString(12));
			}
			System.out.println(j);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return j;
	}

	public boolean updateJob(Jobs j) {
		boolean f = false;
		try {

			String sql = "update job set title=?,description=?,category=?,status=?,location=?,vacancy=?,salary=?,experience=?,job_type=? where id=?";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, j.getTitle());
			ps.setString(2, j.getDescription());
			ps.setString(3, j.getCategory());
			ps.setString(4, j.getStatus());
			ps.setString(5, j.getLocation());
			ps.setString(6, j.getVacancy());
			ps.setString(7, j.getSalary());
			ps.setString(8, j.getExperience());
			ps.setString(9, j.getJob_type());

			ps.setInt(10, j.getId());
			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean deleteJobs(int id) {
		boolean f = false;
		try {
			String sql = "delete from job where id=?";
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

	public List<Jobs> getJobsORLocationAndCate(String category, String location) {
		List<Jobs> list = new ArrayList<Jobs>();
		System.out.println("location "+location+"  category"+category);
		Jobs j = null;
		try {
			ResultSet rs=null;
			if("cat".equals(category)) {
				System.out.println("when location is select "+location);
				String sql = "select * from job where location=? and status='Active' order by id DESC";
				PreparedStatement ps = conn.prepareStatement(sql);
				//ps.setString(1, category);
				ps.setString(1, location);
                rs = ps.executeQuery();
			}
			if("loc".equals(location)) {
				System.out.println("when category is select "+category);
				String sql = "select * from job where category=? and status='Active' order by id DESC";
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, category);
				//ps.setString(1, location);
                rs = ps.executeQuery();
			}
			
			while (rs.next()) {
				j = new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdate(rs.getString(7));
				j.setVacancy(rs.getString(8));
				j.setSalary(rs.getString(9));
				j.setExperience(rs.getString(10));
				j.setJob_type(rs.getString(11));

				list.add(j);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	public List<Jobs> getJobsAndLocationAndCate(String category, String location) {
		List<Jobs> list = new ArrayList<Jobs>();

		Jobs j = null;
		try {
			System.out.println("when category and location select");
			String sql = "select * from job where category=? AND location=? and status='Active' order by id DESC";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, category);
			ps.setString(2, location);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				j = new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdate(rs.getString(7));
				j.setVacancy(rs.getString(8));
				j.setSalary(rs.getString(9));
				j.setExperience(rs.getString(10));
				j.setJob_type(rs.getString(11));

				list.add(j);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	public List<Jobs> getJobsStartDateAndEndData(String pdate1, String pdate2){
		List<Jobs> list = new ArrayList<Jobs>();

		Jobs j = null;
		try {
			String sql = "select * from job where pdate>=? AND pdate<=? AND status='Active' order by pdate DESC;";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, pdate1);
			ps.setString(2, pdate2);
			//System.out.println("pdate1  "+pdate1);
	    	//System.out.println("pdate2  "+pdate2);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				j = new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdate(rs.getString(7));
				j.setVacancy(rs.getString(8));
				j.setSalary(rs.getString(9));
				j.setExperience(rs.getString(10));
				j.setJob_type(rs.getString(11));

				list.add(j);
				System.out.println("value of j  "+j);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("list  "+list);
		return list;

	}
	public List<Jobs>  getAllJobsForRecuriter(){
		List<Jobs> list = new ArrayList<Jobs>();
		Jobs j = null;

		try {
			String sql = "select * from job  order by id desc";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				j = new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdate(rs.getTimestamp(7) + "");
				j.setVacancy(rs.getString(8));
				j.setSalary(rs.getString(9));
				j.setExperience(rs.getString(10));
				j.setJob_type(rs.getString(11));
				list.add(j);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	//dashboard method
	
	public int getAllJobsCount() {
	    int count = 0;
	    try {
	        String sql = "select count(*) from job";
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
	public int getActiveJobsCount() {
	    int count = 0;
	    try {
	        String sql = "select count(*) from job where status='Active'";
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
	public int getInActiveJobsCount() {
	    int count = 0;
	    try {
	        String sql = "select count(*) from job where status='Inactive'";
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
	public int getNumberRecruiterCount() {
	    int count = 0;
	    try {
	        String sql = "select count(*) from recruiters";
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
	public int getNumberActiveRecruiterCount() {
	    int count = 0;
	    try {
	        String sql = "select count(*) from recruiters where role='Active'";
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
	public int getNumberInActiveRecruiterCount() {
	    int count = 0;
	    try {
	        String sql = "select count(*) from recruiters where role='Inactive'";
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
	public int getNumberUsersCount() {
	    int count = 0;
	    try {
	        String sql = "select count(*) from users ";
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
	
}

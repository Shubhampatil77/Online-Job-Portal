package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.JobDAO;
import com.entity.Jobs;

@WebServlet("/add_job")
public class AddPostAServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			String title = req.getParameter("title");
			String Location = req.getParameter("Location");
			String category = req.getParameter("category");
			String status = req.getParameter("status");
			String desc = req.getParameter("desc");
			String vacancy = req.getParameter("vacancy");
			String salary = req.getParameter("salary");
			String experience =req.getParameter("experience");
			String job_type = req.getParameter("job_type");
			String recutr_Email = req.getParameter("email");
			
			Jobs j = new Jobs();
			j.setTitle(title);
			j.setDescription(desc);
			j.setLocation(Location);
			j.setStatus(status);
			j.setCategory(category);
			j.setVacancy(vacancy);
			j.setSalary(salary);
			j.setExperience(experience);
			j.setJob_type(job_type);
			j.setRecruiter_email(recutr_Email);
			
			HttpSession session = req.getSession();

			JobDAO dao = new JobDAO(DBConnect.getConn());
			boolean f = dao.addJobs(j);
			if (f) {
				session.setAttribute("succMsg", "Job Post Succsfully");
				resp.sendRedirect("add_job.jsp");
			} else {
				session.setAttribute("succMsg", "Someting Worng");
				resp.sendRedirect("add_job.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

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

@WebServlet("/update")
public class UpdateJobServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String title = req.getParameter("title");
			String Location = req.getParameter("Location");
			String category = req.getParameter("category");
			String status = req.getParameter("status");
			String desc = req.getParameter("desc");
			String vacancy = req.getParameter("vacancy");
			String salary = req.getParameter("salary");
			String experience = req.getParameter("experience");
			String job_type = req.getParameter("job_type");

			Jobs j = new Jobs();
			j.setId(id);
			j.setTitle(title);
			j.setDescription(desc);
			j.setLocation(Location);
			j.setCategory(category);
			j.setStatus(status);
			j.setVacancy(vacancy);
			j.setSalary(salary);
			j.setExperience(experience);
			j.setJob_type(job_type);

			HttpSession session = req.getSession();

			JobDAO dao = new JobDAO(DBConnect.getConn());
			boolean f = dao.updateJob(j);
			if (f) {
				session.setAttribute("succMsg", "Job upadete Succsfully");
				resp.sendRedirect("recruiter_view_job.jsp");
			} else {
				session.setAttribute("succMsg", "Someting Worng");
				resp.sendRedirect("recruiter_view_job.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

package com.studentapp.servelets;

import java.io.IOException;

import com.studentapp1.dao.StudentDao;
import com.studentapp1.dao.studentdaoimpl;
import com.studentapp1.dto.student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/update")
public class update extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDao st=new studentdaoimpl();
		HttpSession session=req.getSession(false);
		student s=(student)session.getAttribute("student");
		
		s.setSname(req.getParameter("name"));
		s.setBranch(req.getParameter("branch"));
		s.setLocation(req.getParameter("location"));
		
		if(st.updateStudent(s)) {
			RequestDispatcher rd= req.getRequestDispatcher("Dashboard.jsp");
			req.setAttribute("success","update successfull");
			rd.forward(req, resp);	
		}
		else {
			RequestDispatcher rd= req.getRequestDispatcher("Update.jsp");
			req.setAttribute("fail","update failed");
			rd.forward(req, resp);
		}
	}
}

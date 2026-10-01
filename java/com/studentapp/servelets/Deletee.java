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
@WebServlet("/Delete")
public class Deletee extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("sid"));
		StudentDao st=new studentdaoimpl();
		student s=new student();
		s.setSid(id);
		if(st.deleteStudent(s)) {
			/*RequestDispatcher rd= req.getRequestDispatcher("viewstudents.jsp");
			req.setAttribute("success", "deleted successully");*/
			resp.sendRedirect("viewstudents?success=deleted successfully");
		}
		else {
			RequestDispatcher rd= req.getRequestDispatcher("viewstudents.jsp");
			req.setAttribute("fail", "deleting unsuccessful");
			rd.forward(req,resp);
		}
	}
}

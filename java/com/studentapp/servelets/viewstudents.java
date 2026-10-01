package com.studentapp.servelets;

import java.io.IOException;
import java.util.ArrayList;

import com.studentapp1.dao.StudentDao;
import com.studentapp1.dao.studentdaoimpl;
import com.studentapp1.dto.student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/viewstudents")
public class viewstudents extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDao st= new studentdaoimpl();
		ArrayList<student>list=st.getstudent();
		if(list !=null&& !list.isEmpty()) {
			RequestDispatcher rd= req.getRequestDispatcher("viewstudents.jsp");
			req.setAttribute("stdlist", list);
			rd.forward(req, resp);
		}
		else {
			RequestDispatcher rd= req.getRequestDispatcher("viewstudents.jsp");
			req.setAttribute("error","no student found");
			rd.forward(req, resp);
		}
	}
}

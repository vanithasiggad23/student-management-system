package com.studentapp.servelets;

import java.io.IOException;
import java.io.PrintWriter;

import com.studentapp1.dao.StudentDao;
import com.studentapp1.dao.studentdaoimpl;
import com.studentapp1.dto.student;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/signup")

public class Signup extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDao st=new studentdaoimpl();
		student s= new student();
		PrintWriter out=resp.getWriter();
		s.setSname(req.getParameter("name"));
		s.setPhone(Long.parseLong(req.getParameter("phone")));
		s.setEmail(req.getParameter("email"));
		s.setLocation(req.getParameter("loc"));
		s.setBranch(req.getParameter("branch"));
		String password=req.getParameter("password");
		String confirm=req.getParameter("confirm");
		
		if(password.equals(confirm)) {
			s.setPassword(password);
			if(st.insertStudent(s)) {
				req.setAttribute("message", "signup successful");

			    RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
			    rd.forward(req, resp);
			}
			else {
				req.setAttribute("message", "signup unsuccessful");

			    RequestDispatcher rd = req.getRequestDispatcher("signup.jsp");
			    rd.forward(req, resp);
			}
			
		}
		else {
			req.setAttribute("message", "password missmatch");

		    RequestDispatcher rd = req.getRequestDispatcher("signup.jsp");
		    rd.forward(req, resp);
		}
	}

}

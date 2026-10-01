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
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentDao st=new studentdaoimpl();
		String email=req.getParameter("email");
		String password=req.getParameter("pw");
		PrintWriter out=resp.getWriter();
		student s= st.getStudent(email, password);
		
		HttpSession session= req.getSession(true);
		if(s!=null) {
			req.setAttribute("message", "login successful");
			// req.setAttribute("student", s); 
			session.setAttribute("student", s);
		    RequestDispatcher rd = req.getRequestDispatcher("Dashboard.jsp");
		    rd.forward(req, resp);
		}
		else {
			req.setAttribute("message", "Invalid email or password");

		    RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
		    rd.forward(req, resp);
		}
		
	}
}

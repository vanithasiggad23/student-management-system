package com.studentapp.servelets;

import java.io.IOException;
import java.io.PrintWriter;

import com.studentapp1.dao.*;
import com.studentapp1.dto.student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/forgotpassword")
public class forgetpassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        PrintWriter out = resp.getWriter();

        String email = req.getParameter("email");
        long phone = Long.parseLong(req.getParameter("phone"));
        String password = req.getParameter("password");
        String confirm = req.getParameter("confirm");

        StudentDao st = new studentdaoimpl();

        student s = st.getStudent(email, phone);

        if (s != null) {

            if (password.equals(confirm)) {

                if (!(s.getPassword().equals(password))) {

                    s.setPassword(password);

                    if (st.updateStudent(s)) {

                        req.setAttribute("message", "Password Update Succesfully");

                        RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
                        rd.forward(req, resp);

                    } else {

                        req.setAttribute("message", "Something Went Wrong! Password could not be updated.");

                        RequestDispatcher rd = req.getRequestDispatcher("ForgotPassword.jsp");
                        rd.forward(req, resp);
                    }

                } else {

                    req.setAttribute("message", "Password Already In Use. Please enter a different password.");

                    RequestDispatcher rd = req.getRequestDispatcher("ForgotPassword.jsp");
                    rd.forward(req, resp);
                }

            } else {

                req.setAttribute("message", "Password and Confirm Password must be the same.");

                RequestDispatcher rd = req.getRequestDispatcher("ForgotPassword.jsp");
                rd.forward(req, resp);
            }

        } else {

            req.setAttribute("message", "Student Not Found. Email and phone number do not match.");

            RequestDispatcher rd = req.getRequestDispatcher("ForgotPassword.jsp");
            rd.forward(req, resp);
        }
    }
}

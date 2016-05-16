package com.icar.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icar.employee.service.IUserManager;
import com.icar.employee.service.User;
import com.icar.employee.service.impl.UserManagerImpl;

public class ShowUsersAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();

		IUserManager userManager = new UserManagerImpl("null");

		List<User> list = userManager.findAllUsers();
		session.setAttribute("allUsers", list);
		request.getRequestDispatcher("show-users.jsp").forward(request,
				response);
		out.flush();
		out.close();
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	doGet(request,response);
	}

}

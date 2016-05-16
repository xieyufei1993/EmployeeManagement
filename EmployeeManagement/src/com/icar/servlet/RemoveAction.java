package com.icar.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icar.employee.dao.UserDao;
import com.icar.employee.dao.impl.UserDaoImpl;
import com.icar.employee.service.User;

public class RemoveAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		request.getRequestDispatcher("searchemployee.jsp").forward(request,response);
		String sname=request.getParameter("name1");
		System.out.println(sname);
		UserDao dao=new UserDaoImpl();
		dao.delete(sname);
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}

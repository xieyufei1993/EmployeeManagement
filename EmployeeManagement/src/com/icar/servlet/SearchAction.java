package com.icar.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icar.employee.dao.UserDao;
import com.icar.employee.dao.impl.UserDaoImpl;
import com.icar.employee.service.User;

public class SearchAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String name=request.getParameter("name");
		String nativePlace=request.getParameter("nativePlace");
		String formalSchooling=request.getParameter("formalSchooling");
		UserDao dao=new UserDaoImpl();
		List<User> list=dao.find(name,nativePlace,formalSchooling);
		request.setAttribute("list", list);
		request.getRequestDispatcher("searchresult.jsp").forward(request,response);
		out.flush();
		out.close();
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

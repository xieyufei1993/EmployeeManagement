package com.icar.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icar.db.DbUtil;
import com.icar.employee.dao.UserDao;
import com.icar.employee.dao.impl.UserDaoImpl;
import com.icar.employee.service.User;

public class userManager extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		List<User> list = new ArrayList<User>();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String nativeplace=request.getParameter("nativePlace");
		String num=request.getParameter("num");
		String telephone=request.getParameter("telephone");
		String cardId=request.getParameter("cardId");
		String formalSchooling=request.getParameter("formalSchooling");
		String university=request.getParameter("university");
		User user=new User(name,sex,nativeplace,num,telephone,cardId,formalSchooling,university);
		list.add(user);
		UserDao dao = new UserDaoImpl("user");
		dao.save(user);
		request.getRequestDispatcher("show-users.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

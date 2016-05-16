package com.icar.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icar.employee.dao.UserDao;
import com.icar.employee.dao.impl.UserDaoImpl;
import com.icar.employee.service.User;

public class ModifyAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String sname=request.getParameter("username");
		System.out.println(sname);
		String sex=request.getParameter("sex");
		String nativePlace=request.getParameter("nativePlace");
		String num=request.getParameter("num");
		String telephone=request.getParameter("telephone");
		String cardId=request.getParameter("cardId");
		String formalSchooling=request.getParameter("formalSchooling");
		String university=request.getParameter("university");
		User user=new User(sname, sex, nativePlace, num, telephone, cardId, formalSchooling, university);
		UserDao dao=new UserDaoImpl(); 
		System.out.print(sname);
		List<User> list2=dao.find2(sname);
		if(list2!=null && list2.size()>0){
		
			dao.update(user);
		
		}else
		{
			System.out.println("查找失败");
		}
		
		request.getRequestDispatcher("searchemployee.jsp").forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}

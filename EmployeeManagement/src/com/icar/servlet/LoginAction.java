package com.icar.servlet;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.icar.db.DbUtil;

public class LoginAction extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * 初始化servlet的配置内容，读取context的内容。
	 */
	@Override
	public void init() throws ServletException {
		super.init();
		ServletContext context = this.getServletContext();
		String path = context.getInitParameter("DBCONFIG"); // 从web.xml中读取配置文件路径。
		InputStream in = context.getResourceAsStream(path);
		DbUtil.getInstance().config(in); // 配置数据库连接。
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		if(userName.equalsIgnoreCase("admin")&&password.equalsIgnoreCase("admin")){
			response.sendRedirect("index.jsp");
		}
		else{
			response.sendRedirect("login2.jsp");
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

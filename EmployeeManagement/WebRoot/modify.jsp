<%@ page language="java" import="java.util.*" import="com.icar.employee.service.*" pageEncoding="utf-8"%>
<%@page import="com.icar.employee.dao.*" %>
<%@page import="com.icar.employee.dao.impl.*" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>modify.html</title>
	
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

  </head>
  <% String userName=request.getParameter("name");
     
   %>
  
  <body background="images/design_jingmeisheji_240554_11.jpg">
    <br>

	<h1 align="center">修改用户信息</h1>
	<br>
	<form action="Modify.action?username=<%=userName%>" method="post" name="Modify">
		<div align="center"></div>
		<p align="center">
		<table  cellpadding=15 align="center" style="border-style: ridge;">
			<tbody>
				<tr>
					<td>
						<table border="0" align="center" width="300"
							style="font-size: 20px">
							<tbody>
								<tr>
									<td align="right"><b><small>姓&nbsp;&nbsp;名</small> </b>
									</td>
									<td><input type="text" name="name" value="<%=userName%>" readonly/>
									</td>
								</tr>
								<tr>
									<td align="right">&nbsp; <b><small>性&nbsp;&nbsp;别</small>
									</b>
									</td>
									<td><input type="text" name="sex" />
									</td>
								</tr>
								<tr>
									<td align="right">&nbsp; <b><small>籍&nbsp;&nbsp;贯</small>
									</b>
									</td>
									<td><input type="text" name="nativePlace" />
									</td>
								</tr>
								<tr>
									<td align="right">&nbsp; <b><small>员工编号</small>
									</b>
									</td>
									<td><input type="text" name="num" />
									</td>
								</tr>
								<tr>
									<td align="right">&nbsp; <b><small>联系方式</small>
									</b>
									</td>
									<td><input type="text" name="telephone" />
									</td>
								</tr>
								<tr>
									<td align="right">&nbsp; <b><small>身份证号</small>
									</b>
									</td>
									<td><input type="text" name="cardId" />
									</td>
								</tr>
								<tr>
									<td align="right">&nbsp; <b><small>学&nbsp;&nbsp;历</small>
									</b>
									</td>
									<td><input type="text" name="formalSchooling" />
									</td>
								</tr>
								
								
								
								<tr>
									<td align="right">&nbsp; <b><small>毕业学校</small>
									</b>
									</td>
									<td><input type="text" name="university" />
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<td><img border="0" src="images/33.jpg" width="180"
						height="200">
					</td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td><br></td>
					<td align="right"><input type="submit" name="submit"
						value="修改" onclick=alert("用户已经被修改成功，您可以继续修改其他用户！")
						style="background-color: #F8F8FF; font-weight: bold; width:  140px; font-size: medium;" />

					</td>

				</tr>

			</tbody>

		</table>
	</form>
</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>" >

<title>创建用户页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


</head>

<body background="images/bg.jpg">
	<br>

	<h1 align="center">新增员工信息</h1>
	<br>
	<form action="userManager.action" method="post" name="userManager">
		<div align="center"></div>
		<p align="center">
		<table align="center" style="border-style: ridge;">
			<tbody>
				<tr>
					<td>
						<table border="0" align="center" width="300"
							style="font-size: 20px">
							<tbody>
								<tr>
									<td align="right">&nbsp; <b><small>姓名</small> </b>
									</td>
									<td><input type="text" name="name" />
									</td>
								</tr>
								<tr>
									<td align="right">&nbsp; <b><small>性别</small>
									</b>
									</td>
									<td><input type="text" name="sex" />
									</td>
								</tr>
								<tr>
									<td align="right">&nbsp; <b><small>籍贯</small>
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
									<td align="right">&nbsp; <b><small>学历</small>
									</b>
									</td>
									<td><input type="text" name="formalSchooling" />
									</td>
								</tr>
								<tr>
									<td align="right">&nbsp; <b><small>毕业院校</small>
									</b>
									</td>
									<td><input type="text" name="university" />
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<td><img border="0" src="images/addUser.gif" width="132"
						height="132">
					</td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td><br></td>
					<td align="right"><input type="submit" name="submit" onclick=alert("创建用户成功！点击可进行查看");
						value="新建用户"
						style="background-color: #F8F8FF; font-weight: bold; width:  140px; font-size: medium;" />

					</td>

				</tr>

			</tbody>

		</table>
	</form>
</body>
</html>
